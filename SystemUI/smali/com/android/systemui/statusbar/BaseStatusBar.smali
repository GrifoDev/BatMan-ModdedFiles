.class public abstract Lcom/android/systemui/statusbar/BaseStatusBar;
.super Lcom/android/systemui/SystemUI;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;
.implements Lcom/android/systemui/statusbar/NotificationData$Environment;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnGutsButtonClickListener;
.implements Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/BaseStatusBar$10;,
        Lcom/android/systemui/statusbar/BaseStatusBar$11;,
        Lcom/android/systemui/statusbar/BaseStatusBar$1;,
        Lcom/android/systemui/statusbar/BaseStatusBar$2;,
        Lcom/android/systemui/statusbar/BaseStatusBar$3;,
        Lcom/android/systemui/statusbar/BaseStatusBar$4;,
        Lcom/android/systemui/statusbar/BaseStatusBar$5;,
        Lcom/android/systemui/statusbar/BaseStatusBar$6;,
        Lcom/android/systemui/statusbar/BaseStatusBar$7;,
        Lcom/android/systemui/statusbar/BaseStatusBar$8;,
        Lcom/android/systemui/statusbar/BaseStatusBar$9;,
        Lcom/android/systemui/statusbar/BaseStatusBar$H;,
        Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;
    }
.end annotation


# static fields
.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field private static ENABLE_LOCK_SCREEN_ALLOW_REMOTE_INPUT:Z

.field public static final ENABLE_REMOTE_INPUT:Z

.field public static final FORCE_REMOTE_INPUT_HISTORY:Z

.field protected static final KNOX_DEBUG:Z

.field public static final SAFE_DEBUG:Z


# instance fields
.field protected hasVisibleNotification:Z

.field protected mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAllUsersReceiver:Landroid/content/BroadcastReceiver;

.field protected mAllowLockscreenRemoteInput:Z

.field protected mAm:Landroid/app/ActivityManager;

.field protected mAodManager:Lcom/samsung/android/aod/AODManager;

.field private mApplicationIconArrayMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mApplicationInfoArrayMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected mBlockedRemoteInputOnCover:Z

.field protected mBouncerShowing:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mClickedNotificationPreview:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field protected mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field protected final mCurrentProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentUserId:I

.field private mDensity:I

.field protected mDeskGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field protected mDeskHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field protected mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

.field protected mDeviceInteractive:Z

.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field protected mDisableNotificationAlerts:Z

.field protected mDisplay:Landroid/view/Display;

.field protected mDreamManager:Landroid/service/dreams/IDreamManager;

.field protected mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

.field private mFlipfont:I

.field private mFontScale:F

.field protected mGearVrDocked:Z

.field private final mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

.field protected mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field protected mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

.field protected mHasBlockableNotification:Z

.field private mHasVisibleNotificationOnKeyguard:Z

.field protected mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field protected mHeadsUpTicker:Z

.field public mIsDeskMode:Z

.field protected mIsLockShadeByExpandNoti:Z

.field protected mIsNeedToMoreCueAnim:Z

.field protected mIsNotificationIconsOnlyOn:Z

.field protected mIsWhiteCoverWallpaper:Z

.field protected mIsWhiteKeyguardWallpaper:Z

.field protected mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field protected mKeysKeptForRemoteInput:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

.field private final mKnoxStateMonitorCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

.field protected mLayoutDirection:I

.field private mLocale:Ljava/util/Locale;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenPublicMode:Z

.field private final mLockscreenSettingsObserver:Landroid/database/ContentObserver;

.field protected mMediaNotificationKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMoreCue:Lcom/android/systemui/statusbar/NotificationMoreCue;

.field protected mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field protected mNotiDoubleTapped:Z

.field protected mNotiDraggedDownOnLock:Z

.field protected mNotificationBlockManager:Lcom/android/systemui/NotificationBlockManager;

.field protected mNotificationBottomBarView:Lcom/android/systemui/statusbar/NotificationBottomBarView;

.field private mNotificationClicker:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

.field protected mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field protected mNotificationGutType:I

.field private mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

.field protected final mNotificationIconsOnlySettingObserver:Landroid/database/ContentObserver;

.field private final mNotificationListener:Landroid/service/notification/NotificationListenerService;

.field protected mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field protected mNotificationPreviewController:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field protected mPowerManager:Landroid/os/PowerManager;

.field protected mRecents:Lcom/android/systemui/RecentsComponent;

.field protected mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

.field protected mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

.field protected mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field protected mRiv:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field protected mServiceBoxMusicNotificationKey:Ljava/lang/String;

.field private mServiceBoxMusicNotificationPkg:Ljava/lang/String;

.field private mServiceBoxObserver:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field private mServiceBoxObserverDBValueList:[Landroid/net/Uri;

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field protected mShowLockscreenNotifications:Z

.field protected mShowNotificationGuts:Z

.field protected mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field protected mState:I

.field protected mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field protected mUseHeadsUp:Z

.field private mUserManager:Landroid/os/UserManager;

.field private final mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

.field private final mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

.field protected mVisible:Z

.field private mVisibleToUser:Z

.field protected mVrMode:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected mWindowManagerService:Landroid/view/IWindowManager;

.field protected mZenMode:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/BaseStatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/BaseStatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/Notification;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->processForRemoteInput(Landroid/app/Notification;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/BaseStatusBar;->saveImportanceCloseControls(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->startAppLockCheckService(Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateLockscreenNotificationSetting()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateServiceBoxMusicNotificationPkg()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->SAFE_DEBUG:Z

    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    const-string/jumbo v0, "debug.enable_remote_input"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_REMOTE_INPUT:Z

    const-string/jumbo v0, "debug.child_notifs"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    const-string/jumbo v0, "debug.force_remoteinput_history"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->FORCE_REMOTE_INPUT_HISTORY:Z

    sput-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_LOCK_SCREEN_ALLOW_REMOTE_INPUT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    iput-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    iput v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFlipfont:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpTicker:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisableNotificationAlerts:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationClicker:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotiDraggedDownOnLock:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsLockShadeByExpandNoti:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNotificationIconsOnlyOn:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHasVisibleNotificationOnKeyguard:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mServiceBoxMusicNotificationKey:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mServiceBoxMusicNotificationPkg:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMediaNotificationKeyList:Ljava/util/ArrayList;

    new-array v0, v4, [Landroid/net/Uri;

    const-string/jumbo v1, "aod_lock_share_current_music_pkg"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mServiceBoxObserverDBValueList:[Landroid/net/Uri;

    iput v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutType:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mApplicationInfoArrayMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mApplicationIconArrayMap:Landroid/util/ArrayMap;

    iput-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRiv:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$2;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$3;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$3;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$4;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$4;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$5;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationIconsOnlySettingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$6;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$7;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$8;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAllUsersReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$9;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$10;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitorCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$11;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method private adminAllowsUnredactedNotifications(I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    return v1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    and-int/lit8 v3, v0, 0x8

    if-nez v3, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasInterrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private bindBlockGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 21

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->inflateBlockGuts()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v19

    invoke-static/range {v18 .. v19}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/BlockNotificationGuts;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v7, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mApplicationInfoArrayMap:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mApplicationInfoArrayMap:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    :goto_0
    move-object v10, v7

    if-eqz v7, :cond_0

    invoke-virtual {v14, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mApplicationIconArrayMap:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mApplicationIconArrayMap:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v13, v0

    :goto_1
    iget v3, v10, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    move-object/from16 v18, v0

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/UserHandle;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    :cond_1
    if-eqz v11, :cond_4

    const v18, 0x7f1300ec

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/BlockNotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    const v18, 0x7f1300ed

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/BlockNotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v18, 0x7f1300f1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/BlockNotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CompoundButton;

    new-instance v18, Lcom/android/systemui/statusbar/BaseStatusBar$17;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/android/systemui/statusbar/BaseStatusBar$17;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/BlockNotificationGuts;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v18, Lcom/android/systemui/statusbar/BaseStatusBar$18;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$18;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v18, 0x7f1300f2

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/BlockNotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v16

    if-ltz v3, :cond_5

    move v4, v3

    new-instance v18, Lcom/android/systemui/statusbar/BaseStatusBar$19;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v12, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$19;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/BlockNotificationGuts;Ljava/lang/String;I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    return-void

    :cond_2
    const/16 v18, 0x2200

    :try_start_1
    move/from16 v0, v18

    invoke-virtual {v14, v12, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mApplicationInfoArrayMap:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    invoke-virtual {v14}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mApplicationIconArrayMap:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_3
    :try_start_2
    invoke-virtual {v14, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mApplicationIconArrayMap:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :cond_4
    const v18, 0x7f1300ec

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/BlockNotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    :cond_5
    const/16 v18, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method private bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 18

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->inflateGuts()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->setClosedListener(Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;)V

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/16 v15, 0x2200

    :try_start_0
    invoke-virtual {v12, v10, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v12, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v9}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iget v2, v9, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    new-instance v16, Landroid/os/UserHandle;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v17

    invoke-direct/range {v16 .. v17}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    :cond_1
    const v15, 0x7f1300d7

    invoke-virtual {v8, v15}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    invoke-virtual {v15, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v15, 0x7f1300ed

    invoke-virtual {v8, v15}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v15, 0x7f13036b

    invoke-virtual {v8, v15}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    if-ltz v2, :cond_2

    move v3, v2

    new-instance v15, Lcom/android/systemui/statusbar/BaseStatusBar$15;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v8, v10, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$15;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;Ljava/lang/String;I)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v15, 0x7f0f05e3

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v8, v12, v13, v15}, Lcom/android/systemui/statusbar/NotificationGuts;->bindImportance(Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;I)V

    const v15, 0x7f13036c

    invoke-virtual {v8, v15}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v15, 0x7f0f05e4

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(I)V

    new-instance v15, Lcom/android/systemui/statusbar/BaseStatusBar$16;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v8, v13, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$16;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_0
    move-exception v7

    invoke-virtual {v12}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto/16 :goto_0

    :cond_2
    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private changeToGoneState()V
    .locals 7

    const/16 v6, 0x8

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getNotificationPreview()Lcom/android/systemui/statusbar/preview/NotificationPreview;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->isClicked()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getNotificationPreview()Lcom/android/systemui/statusbar/preview/NotificationPreview;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->isFirstAdded()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMusicServiceBoxOn()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getCurrentMediaNotificationKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->hasMetaData(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private dismissPopups(II)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups(IIZZ)V

    return-void
.end method

.method public static getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .locals 5

    move-object v0, p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x4

    invoke-virtual {p0, v2, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private processForRemoteInput(Landroid/app/Notification;)V
    .locals 13

    const/4 v10, 0x0

    sget-boolean v9, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_REMOTE_INPUT:Z

    if-nez v9, :cond_0

    return-void

    :cond_0
    iget-object v9, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v9, :cond_6

    iget-object v9, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v11, "android.wearable.EXTENSIONS"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v9, :cond_1

    iget-object v9, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v9, v9

    if-nez v9, :cond_6

    :cond_1
    const/4 v7, 0x0

    new-instance v8, Landroid/app/Notification$WearableExtender;

    invoke-direct {v8, p1}, Landroid/app/Notification$WearableExtender;-><init>(Landroid/app/Notification;)V

    invoke-virtual {v8}, Landroid/app/Notification$WearableExtender;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$Action;

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v5

    if-eqz v5, :cond_2

    array-length v11, v5

    move v9, v10

    :goto_1
    if-ge v9, v11, :cond_4

    aget-object v6, v5, v9

    invoke-virtual {v6}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v12

    if-eqz v12, :cond_7

    move-object v7, v0

    :cond_4
    if-eqz v7, :cond_2

    :cond_5
    if-eqz v7, :cond_6

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v9, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/app/Notification$Action;

    aput-object v7, v9, v10

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    :cond_6
    return-void

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method private saveImportanceCloseControls(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V
    .locals 9

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->saveImportance(Landroid/service/notification/StatusBarNotification;)V

    new-array v3, v6, [I

    new-array v2, v6, [I

    invoke-virtual {p2, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getLocationOnScreen([I)V

    invoke-virtual {p4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v0, v6, 0x2

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v1, v6, 0x2

    aget v6, v2, v7

    aget v7, v3, v7

    sub-int/2addr v6, v7

    add-int v4, v6, v0

    aget v6, v2, v8

    aget v7, v3, v8

    sub-int/2addr v6, v7

    add-int v5, v6, v1

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups(II)V

    return-void
.end method

.method private startAppLockCheckService(Landroid/app/PendingIntent;)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.intent.action.CHECK_APPLOCK_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.applock"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string/jumbo v2, "LOCKED_PACKAGE_WINDOW_ATTRIBUTES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "LAUNCH_FROM_RESUME"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "LOCKED_PACKAGE_NAME"

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "startFromNotification"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private startNotificationGutsIntent(Landroid/content/Intent;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$14;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$14;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ZILandroid/content/Intent;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    return-void
.end method

.method private updateCurrentProfilesCache()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method private updateKnoxNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 11

    const-string/jumbo v1, "KnoxNotification"

    const-string/jumbo v2, "----- updateKnoxNotificationViews -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getKnoxContentView()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_2

    const v1, 0x1020006

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->icon:I

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->iconLevel:I

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->number:I

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->color:I

    invoke-static {v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->resolveColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v10, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSensitiveTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getKnoxContentView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSanitizedTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getKnoxContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationTitleForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private updateLockscreenNotificationSetting()V
    .locals 10

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "lock_screen_show_notifications"

    iget v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    const/4 v9, 0x1

    invoke-static {v6, v7, v9, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    and-int/lit8 v6, v1, 0x4

    if-nez v6, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setShowLockscreenNotifications(Z)V

    sget-boolean v6, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_LOCK_SCREEN_ALLOW_REMOTE_INPUT:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "lock_screen_allow_remote_input"

    iget v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v2, 0x1

    :goto_3
    and-int/lit8 v6, v1, 0x40

    if-nez v6, :cond_4

    const/4 v3, 0x1

    :goto_4
    if-eqz v2, :cond_5

    :goto_5
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->setLockScreenAllowRemoteInput(Z)V

    :goto_6
    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v0, v5

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    move v3, v5

    goto :goto_5

    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->setLockScreenAllowRemoteInput(Z)V

    goto :goto_6
.end method

.method private updateNotificationTitleForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Landroid/view/View;)V
    .locals 11

    const v10, 0x1020016

    if-eqz p2, :cond_5

    const-string/jumbo v8, "KnoxNotification"

    const-string/jumbo v9, "----- updateNotificationTitleForKnox -----"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v8, 0x1020449

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v7, v3

    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_0
    if-eqz v3, :cond_2

    const-string/jumbo v8, "com.samsung.android.email.provider"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-boolean v8, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v8, :cond_1

    const-string/jumbo v8, "KnoxNotification"

    const-string/jumbo v9, "----- updateNotificationTitleForKnox: EmailProvider found -----"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p3, :cond_2

    const v8, 0x7f130096

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :cond_2
    :goto_0
    sget-boolean v8, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v8, :cond_3

    const-string/jumbo v8, "KnoxNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "----- updateNotificationTitleForKnox: titleString - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " -----"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->color:I

    invoke-static {v8, v9}, Lcom/android/internal/util/NotificationColorUtil;->resolveColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    return-void

    :cond_6
    const v8, 0x1020016

    :try_start_1
    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_7
    sget-boolean v8, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v8, :cond_2

    const-string/jumbo v8, "KnoxNotification"

    const-string/jumbo v9, "----- updateNotificationTitleForKnox: did not find title view -----"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v8, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v8, :cond_2

    const-string/jumbo v8, "KnoxNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateNotificationTitleForKnox: threw an exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 8

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getContentView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v1, v5, v6, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v5}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v0, v5, v6, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getHeadsUpContentView()Landroid/view/View;

    move-result-object v2

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v5}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v3, v5, v2, v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v5}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateKnoxNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationClicker:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5, v6, p2}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onNotificationUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetHeight()V

    return-void
.end method

.method private updateSanitizedTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V
    .locals 8

    const v7, 0x7f0f054c

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    const-string/jumbo v3, "KnoxNotification"

    const-string/jumbo v4, "----- updateSanitizedTextForKnox -----"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x1020090

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {v3, v1}, Lcom/android/keyguard/KnoxStateMonitor;->getKnoxName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-array v4, v5, [Ljava/lang/Object;

    const-string/jumbo v5, "Knox"

    aput-object v5, v4, v6

    invoke-virtual {v3, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {v3, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSensitiveTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V
    .locals 3

    if-eqz p2, :cond_0

    const-string/jumbo v1, "KnoxNotification"

    const-string/jumbo v2, "----- updateSensitiveTextForKnox -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f13037c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x104014d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method private updateServiceBoxMusicNotificationPkg()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->getServiceBoxCurrentMusicPkg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mServiceBoxMusicNotificationPkg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateServiceBoxMusicNotificationKey()Z

    return-void
.end method


# virtual methods
.method public abstract addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
.end method

.method protected addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    return-void
.end method

.method public addPostCollapseAction(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public animateCollapsePanels(IZ)V
    .locals 0

    return-void
.end method

.method public animateCollapsePanels(IZZ)V
    .locals 0

    return-void
.end method

.method public animateExpandLockedShadePanel(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method

.method protected applyColorsAndBackgrounds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 7

    const v5, 0x1020450

    const/16 v6, 0x15

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-eq v3, v5, :cond_3

    :cond_0
    iget v3, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_1

    iget v3, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-ge v3, v6, :cond_1

    iget-object v3, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    iput-boolean v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    :cond_1
    :goto_0
    iget-object v3, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_2

    iget-object v3, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget v4, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-ge v4, v6, :cond_6

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const v2, 0x7f130042

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(ILjava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    :cond_4
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v0, v3, Landroid/app/Notification;->color:I

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0176

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :cond_5
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTintColor(I)V

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method public bindTypedGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->bindBlockGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bindVetoButtonClickListener(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;
    .locals 2

    const v1, 0x7f1304bd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$13;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar$13;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-object v0
.end method

.method public cancelPreloadRecentApps()V
    .locals 2

    const/16 v0, 0x3ff

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected cancelPreloadingRecents()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->cancelPreloadingRecents()V

    :cond_0
    return-void
.end method

.method public clearMapsForGuts()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mApplicationInfoArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mApplicationIconArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public clearNotificationEffects()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->clearNotificationEffects()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected abstract createAndAddWindows()V
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method public createIcon(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    new-instance v7, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v1, v2, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v8}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No small icon in notification from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    return-object v9

    :cond_0
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v4, v8, Landroid/app/Notification;->iconLevel:I

    iget v5, v8, Landroid/app/Notification;->number:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v6, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Couldn\'t create icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    return-object v9

    :cond_1
    return-object v7
.end method

.method protected createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->createIcon(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v4

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    return-object v4

    :cond_1
    return-object v0
.end method

.method public destroy()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected dismissKeyboardShortcuts()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .locals 2

    const/16 v0, 0x403

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;ZZ)V
    .locals 0

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    return-void
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V
    .locals 0

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    return-void
.end method

.method public dismissPopups()V
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups(IIZZ)V

    return-void
.end method

.method public dismissPopups(IIZZ)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->closeControls(IIZ)V

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p4, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetExposedGearView(ZZ)V

    :cond_1
    return-void
.end method

.method public filterOutForKnoxContainer(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    if-nez p1, :cond_0

    return v6

    :cond_0
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {v8, v5}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget v8, v8, Lcom/android/systemui/statusbar/NotificationData;->isKnoxKioskMode:I

    if-gez v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {v9}, Lcom/android/keyguard/KnoxStateMonitor;->isContainerKioskMode()Z

    move-result v9

    if-eqz v9, :cond_2

    :goto_0
    iput v6, v8, Lcom/android/systemui/statusbar/NotificationData;->isKnoxKioskMode:I

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v7

    invoke-virtual {v6, v5, v1, v7}, Lcom/android/keyguard/KnoxStateMonitor;->filterOutForKnoxContainer(ILjava/lang/String;Z)Z

    move-result v6

    return v6

    :cond_2
    move v6, v7

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {v8, v5}, Lcom/android/keyguard/KnoxStateMonitor;->knoxContainerInSuperLockMode(I)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {v8, v5}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v1, :cond_5

    const-string/jumbo v8, "com.android.settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    return v6

    :cond_5
    invoke-virtual {p0, p1, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKnoxNotificationSanitizeNeeded(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z

    move-result v8

    if-eqz v8, :cond_9

    iget v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    iget v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    and-int/lit8 v8, v8, -0x4

    iput v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v8, v8, Lcom/android/systemui/statusbar/NotificationData;->mSanitizingToCollapse:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v8

    if-nez v8, :cond_6

    if-nez v4, :cond_8

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v6, v6, Lcom/android/systemui/statusbar/NotificationData;->mSanitizingToCollapse:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_7

    iget-boolean v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    if-nez v6, :cond_7

    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->sanitizePendingIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iput-object v2, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationClicker:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6, v8, v9}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    :cond_7
    :goto_1
    return v7

    :cond_8
    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v9, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    return v6

    :cond_9
    iget-boolean v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    if-eqz v6, :cond_a

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iput-object v9, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationClicker:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6, v8, v9}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    :cond_a
    iget v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    or-int/lit8 v6, v6, 0x3

    iput v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    iget v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    and-int/lit8 v6, v6, -0x9

    iput v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    goto :goto_1
.end method

.method protected getActivityOptions()Landroid/os/Bundle;
    .locals 2

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentMediaNotificationKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object v0
.end method

.method public getGroupManager()Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-object v0
.end method

.method protected abstract getMaxKeyguardNotifications(Z)I
.end method

.method public getNotificationGutsType()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutType:I

    return v0
.end method

.method protected getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$20;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$20;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method protected handleContextClick(ILandroid/view/View;)V
    .locals 0

    return-void
.end method

.method handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    move-object v6, p2

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method public handleNotificationPost(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v0, p1, p2}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public handleNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public handleNotificationRemove(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v0, p1, p2}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method protected handleVisibleToUserChanged(Z)V
    .locals 6

    if-eqz p1, :cond_4

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPanelFullyCollapsed()Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPanelFullyCollapsed()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v4, v0, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V

    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "note_load"

    invoke-static {v4, v5, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v4}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelHidden()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method protected hasMetaData(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideRecentApps(ZZ)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x3fc

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_0

    move v3, v1

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v4, v0, v3, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected hideRecents(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/RecentsComponent;->hideRecents(ZZ)V

    :cond_0
    return-void
.end method

.method protected inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 48

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v35

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v5, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setShowActionBg(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/statusbar/NotificationData$Entry;->cacheContentViews(Landroid/content/Context;Landroid/app/Notification;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    move-object/from16 v38, v0

    if-nez v17, :cond_0

    const-string/jumbo v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no contentView for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v42 .. v42}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5

    :catch_0
    move-exception v22

    const-string/jumbo v5, "StatusBar"

    const-string/jumbo v6, "Unable to get notification remote views"

    move-object/from16 v0, v22

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    return v5

    :cond_0
    const/16 v25, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasUserChangedExpansion()Z

    move-result v25

    invoke-virtual/range {v41 .. v41}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v45

    invoke-virtual/range {v41 .. v41}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v46

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->reset()V

    if-eqz v25, :cond_1

    move-object/from16 v0, v41

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->workAroundBadLayerDrawableOpacity(Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->bindVetoButtonClickListener(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v6, 0x7f0f0368

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v41 .. v41}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v15

    invoke-virtual/range {v41 .. v41}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v16

    invoke-virtual/range {v41 .. v41}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getKnoxLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v24

    const/high16 v5, 0x60000

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDescendantFocusability(I)V

    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_REMOTE_INPUT:Z

    if-eqz v5, :cond_2

    const/high16 v5, 0x20000

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDescendantFocusability(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationClicker:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v5, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/16 v27, 0x0

    const/16 v39, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v15, v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v18

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v13, v5, v15, v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v14

    :cond_3
    if-eqz v26, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v15, v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v27

    :cond_4
    if-eqz v38, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-virtual {v0, v5, v1, v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v39

    :cond_5
    if-eqz v18, :cond_6

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/view/View;->setIsRootNamespace(Z)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    :cond_6
    if-eqz v14, :cond_7

    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/view/View;->setIsRootNamespace(Z)V

    invoke-virtual {v15, v14}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    :cond_7
    if-eqz v27, :cond_8

    const/4 v5, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/view/View;->setIsRootNamespace(Z)V

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    :cond_8
    if-eqz v39, :cond_9

    const/4 v5, 0x1

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Landroid/view/View;->setIsRootNamespace(Z)V

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    :cond_9
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationContentView;->updateLargeIconMargin()V

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/NotificationContentView;->updateLargeIconMargin()V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsDeskMode:Z

    if-eqz v5, :cond_a

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/NotificationContentView;->updateHeaderEndMargin()V

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/NotificationContentView;->updateHeaderEndMargin()V

    :cond_a
    const-string/jumbo v11, ""

    :try_start_2
    invoke-virtual/range {v42 .. v42}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v32

    move-object/from16 v0, v32

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, p1

    iput v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v11

    :goto_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-nez v5, :cond_1b

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v5

    if-eqz v5, :cond_14

    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v5, :cond_b

    const-string/jumbo v5, "KnoxNotification"

    const-string/jumbo v6, "-----------------------BaseStatusBar--------------------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "KnoxNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Notification - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v42 .. v42}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "KnoxNotification"

    const-string/jumbo v6, "-----------------------BaseStatusBar--------------------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-string/jumbo v5, "KnoxNotification"

    const-string/jumbo v6, "----- inflateViews : customKnoxViewLocal == null -----"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x109009d

    const/4 v7, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v5, v6, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_13

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->setIsRootNamespace(Z)V

    if-eqz v24, :cond_c

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/NotificationContentView;->updateLargeIconMargin()V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsDeskMode:Z

    if-eqz v5, :cond_c

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/NotificationContentView;->updateHeaderEndMargin()V

    :cond_c
    const-string/jumbo v5, "KnoxNotification"

    const-string/jumbo v6, "----- inflateViews : modified KnoxViewLocal -----"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x1020016

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual/range {v42 .. v42}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationTitleForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Landroid/view/View;)V

    const v5, 0x1020006

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    new-instance v4, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget v7, v7, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v8, v8, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->number:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget-object v10, v10, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->color:I

    invoke-static {v5, v6}, Lcom/android/internal/util/NotificationColorUtil;->resolveColor(Landroid/content/Context;I)I

    move-result v40

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v29

    move/from16 v1, v40

    invoke-virtual {v0, v1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_e
    if-eqz v28, :cond_f

    if-eqz v29, :cond_f

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    const/16 v37, 0x0

    if-eqz v18, :cond_10

    const v5, 0x10200a7

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    :cond_10
    if-eqz v37, :cond_12

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_12

    const v5, 0x10200a7

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    if-eqz v43, :cond_11

    const/4 v5, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    const v5, 0x10200a7

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/DateTimeView;

    if-eqz v20, :cond_12

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-wide v6, v5, Landroid/app/Notification;->when:J

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Landroid/widget/DateTimeView;->setTime(J)V

    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSanitizedTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    :cond_13
    const/4 v5, 0x1

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    :cond_14
    move-object/from16 v0, v41

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v14, :cond_1c

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpandable(Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyColorsAndBackgrounds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->hasSameNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v33

    new-instance v36, Lcom/android/systemui/statusbar/preview/NotificationPreview;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v36

    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/preview/NotificationPreview;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual/range {v42 .. v42}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->setPreviewIcon(Landroid/widget/ImageView;I)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->setPreviewKey(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->setRow(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState()Z

    move-result v5

    if-eqz v5, :cond_15

    if-eqz v33, :cond_1d

    :cond_15
    const/4 v5, 0x0

    :goto_4
    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->setIsFirstAdded(Z)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->setAppName(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setNotificationPreview(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V

    :cond_16
    if-eqz v25, :cond_17

    move-object/from16 v0, v41

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    :cond_17
    move-object/from16 v0, v41

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onNotificationUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    const/4 v5, 0x1

    return v5

    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/LayoutInflater;

    const v5, 0x7f04019b

    const/4 v6, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v41

    check-cast v41, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual/range {v42 .. v42}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsPersona(Z)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionLogger(Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;Ljava/lang/String;)V

    invoke-virtual/range {v42 .. v42}, Landroid/service/notification/StatusBarNotification;->isMarkedDex()Z

    move-result v5

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeskGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeskHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnExpandClickListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;)V

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnGutsButtonClickListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnGutsButtonClickListener;)V

    invoke-virtual/range {v42 .. v42}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v12, v34

    const/16 v5, 0x2200

    :try_start_3
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v32

    if-eqz v32, :cond_19

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v12

    :cond_19
    :goto_6
    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAppName(Ljava/lang/String;)V

    invoke-virtual/range {v42 .. v42}, Landroid/service/notification/StatusBarNotification;->isMarkedDex()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setContextClickable(Z)V

    new-instance v5, Lcom/android/systemui/statusbar/BaseStatusBar$21;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$21;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    goto :goto_5

    :catch_1
    move-exception v22

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v42 .. v42}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v42 .. v42}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "couldn\'t inflate view for notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    return v5

    :catch_2
    move-exception v23

    const-string/jumbo v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed looking up ApplicationInfo for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v42 .. v42}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_1b
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_1c
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_1d
    const/4 v5, 0x1

    goto/16 :goto_4

    :catch_3
    move-exception v21

    goto/16 :goto_6
.end method

.method public isAppCoverShowing()Z
    .locals 2

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "isAppCoverShowing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isBouncerShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerShowing:Z

    return v0
.end method

.method public isCollapsing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCoverViewShowing()Z
    .locals 2

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "isCoverViewShowing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isCoveredState()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->isCoveredState(I)Z

    move-result v0

    return v0
.end method

.method protected isCurrentProfile(I)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isDeviceInGearVrDocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGearVrDocked:Z

    return v0
.end method

.method public isDeviceInVrMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVrMode:Z

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "isKeyguardSecure() called before startKeyguard(), returning false"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isKeyguardState()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->isKeyguardState(I)Z

    move-result v0

    return v0
.end method

.method public isKnoxNotificationSanitizeNeeded(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z
    .locals 6

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getContentView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020450

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v4, 0x1

    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/KnoxStateMonitor;->isKnoxNotificationSanitizeNeeded(IILjava/lang/String;ZZ)Z

    move-result v0

    return v0

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public isLockscreenPublicMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    return v0
.end method

.method public isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.mediaSession"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSession$Token;

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v5, "transport"

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v5

    const v6, 0x1020453

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    :cond_1
    :goto_1
    return v3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method protected isMusicServiceBoxOn()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isEnabledServiceBoxMusicPage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCurrentProfile(I)Z

    move-result v2

    return v2
.end method

.method public isNotificationIconsOnlyOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNotificationIconsOnlyOn:Z

    return v0
.end method

.method public abstract isPanelFullyCollapsed()Z
.end method

.method public isSecLockscreenPublicMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isShadeLockedState()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->isShadeLockedState(I)Z

    move-result v0

    return v0
.end method

.method protected abstract isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z
.end method

.method public launchNotificationSetting(Landroid/view/View;)V
    .locals 9

    move-object v5, p1

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    const/16 v7, 0x2200

    :try_start_0
    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->startAppNotificationSettingsActivity(Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v7, "StatusBar"

    const-string/jumbo v8, "cannot get ApplicationInfo : launchNotificationSetting"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public logNotificationExpansion(Ljava/lang/String;ZZ)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public abstract maybeEscalateHeadsUp()V
.end method

.method protected abstract notifyGearVrStateChange(Z)V
.end method

.method protected notifyHeadsUpScreenOff()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->maybeEscalateHeadsUp()V

    return-void
.end method

.method protected notifyUserAboutHiddenNotifications()V
    .locals 12

    const/high16 v11, 0x10000000

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "show_note_about_notification_hiding"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "StatusBar"

    const-string/jumbo v7, "user hasn\'t seen notification about hidden notifications"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "StatusBar"

    const-string/jumbo v7, "insecure lockscreen, skipping notification"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "show_note_about_notification_hiding"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const-string/jumbo v6, "StatusBar"

    const-string/jumbo v7, "disabling lockecreen notifications and alerting the user"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "lock_screen_show_notifications"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "lock_screen_allow_private_notifications"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.systemui.statusbar.banner_action_cancel"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {v6, v9, v7, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.systemui.statusbar.banner_action_setup"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {v6, v9, v7, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const v1, 0x106005a

    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f02016f

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v8, 0x7f0f0568

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v8, 0x7f0f0569

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v8, 0x106005a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v8, 0x7f0f056a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f02017f

    invoke-virtual {v6, v8, v7, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v8, 0x7f0f056b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f020229

    invoke-virtual {v6, v8, v7, v5}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    const v7, 0x7f13003b

    invoke-virtual {v2, v7, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v4, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v1, p1, Landroid/content/res/Configuration;->FlipFont:I

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDensity:I

    if-ne v0, v5, :cond_0

    iget v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFontScale:F

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_4

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->onDensityOrFontScaleChanged()V

    iput v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDensity:I

    iput v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFontScale:F

    iput v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFlipfont:I

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    if-eq v3, v5, :cond_3

    :cond_2
    iput-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    iput v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->refreshLayout(I)V

    :cond_3
    return-void

    :cond_4
    if-lez v1, :cond_1

    iget v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFlipfont:I

    if-eq v1, v5, :cond_1

    goto :goto_0
.end method

.method public onCoverAppCovered(Z)I
    .locals 2

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "onCoverAppCovered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method protected onDensityOrFontScaleChanged()V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/internal/util/NotificationColorUtil;->updateGrayScaleIconMaxSize(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    if-ne v4, v5, :cond_1

    const/4 v2, 0x1

    :goto_1
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->reInflateViews()V

    if-eqz v2, :cond_0

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->bindTypedGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onExpandClicked(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 0

    return-void
.end method

.method public onGutsButtonClicked(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onGutsClosed(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    return-void
.end method

.method protected onLockedNotificationImportanceChange(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 0

    return-void
.end method

.method protected onLockedRemoteInput(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onLockedWorkRemoteInput(ILcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onNavigationBarForceClicked(III)V
    .locals 0

    return-void
.end method

.method public onPanelLaidOut()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->getMaxKeyguardNotifications(Z)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->getMaxKeyguardNotifications(Z)I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isNotificationIconsOnlyOn()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateRowStates()V

    goto :goto_0
.end method

.method public onSecureLockScreen()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSecLockscreenPublicMode()Z

    move-result v0

    return v0
.end method

.method public onTaskAddedOnTaskBar(IIILandroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTaskFocusedOnTaskBar(IIILandroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTaskRemovedOnTaskBar(IIILandroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTaskUpdatedOnTaskBar(IIILandroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onWorkChallengeUnlocked()V
    .locals 0

    return-void
.end method

.method public overrideActivityPendingAppTransition(Z)V
    .locals 6

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/IWindowManager;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error overriding app transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected performRemoveNotification(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 8

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v5, v2, v3, v1, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V

    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected performRemoveNotificationAnimation(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/BaseStatusBar$23;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar$23;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/service/notification/StatusBarNotification;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const-wide/16 v4, 0x104

    const/16 v3, 0xb4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->dismissViewAnimated(Landroid/view/View;Ljava/lang/Runnable;IJ)V

    :cond_0
    return-void
.end method

.method public preloadRecentApps()V
    .locals 2

    const/16 v0, 0x3fe

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected preloadRecents()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->preloadRecents()V

    :cond_0
    return-void
.end method

.method public prepareKnoxDesktopTaskBar(Z)V
    .locals 0

    return-void
.end method

.method protected abstract refreshLayout(I)V
.end method

.method protected registerNotificationListener()V
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "Unable to register notification listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abstract removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeNotification for unknown key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    return-object v1
.end method

.method protected resetNotificationShadowViews()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOutlineRect(Landroid/graphics/RectF;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v5, v5, v6, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups(IIZZ)V

    return-void
.end method

.method public sanitizePendingIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Landroid/app/PendingIntent;
    .locals 16

    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "----- Inside sanitizePendingIntent -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v13, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object v15, v13

    const/4 v12, 0x0

    if-nez v13, :cond_5

    const/4 v12, 0x1

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "----- sanitizePendingIntent : isSanitizeRequired - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v12, :cond_3

    if-eqz v13, :cond_8

    invoke-virtual {v13}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v10

    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    move/from16 v0, p2

    invoke-virtual {v1, v3, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_9

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    const/4 v1, 0x0

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v10, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, p2

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v2, 0x0

    const/high16 v4, 0x8000000

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v15

    :goto_2
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    :cond_3
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "----- sanitizePendingIntent : sanitized - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v15

    :cond_5
    invoke-virtual {v13}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v11, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_6
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_7

    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "----- sanitizePendingIntent : innerIntent null or filterEquals -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    :cond_9
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    move/from16 v0, p2

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    const/high16 v7, 0x8000000

    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v15

    goto :goto_2
.end method

.method protected sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendKeyEventToKnoxDesktopTaskbar(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method protected abstract setAreThereNotifications()V
.end method

.method public setBouncerShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerShowing:Z

    return-void
.end method

.method protected abstract setHeadsUpUser(I)V
.end method

.method public setIndicatorBgColor(I)V
    .locals 0

    return-void
.end method

.method public setKnoxDesktopTaskBar(ZZ)V
    .locals 0

    return-void
.end method

.method protected setLockScreenAllowRemoteInput(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAllowLockscreenRemoteInput:Z

    return-void
.end method

.method public setLockscreenPublicMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    return-void
.end method

.method public setNavigationBarIconColor(I)V
    .locals 0

    return-void
.end method

.method public setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .locals 0

    return-void
.end method

.method protected setNotificationShown(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setNotificationsShown([Ljava/lang/String;)V

    return-void
.end method

.method protected setNotificationsShown([Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->setNotificationsShown([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "failed setNotificationsShown: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setShowActionBg(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    :try_start_0
    invoke-virtual {p2, p1}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/SettingsHelper;->isShowButtonBackground()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setShowActionBg(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "StatusBar"

    const-string/jumbo v3, "Unable to recover builder"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setShowLockscreenNotifications(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    return-void
.end method

.method protected setZenMode(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mZenMode:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    return-void
.end method

.method public shouldBlockStatusBar()Z
    .locals 2

    const-class v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldBlockStatusBar()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public shouldHideNotifications(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSecLockscreenPublicMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->userAllowsNotificationsInPublic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldHideNotifications(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSecLockscreenPublicMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected shouldInterruptInMirrorLink()Z
    .locals 4

    const/4 v0, 0x1

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "net.mirrorlink.on"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "shouldInterruptInMirrorLink:ON"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldInterruptInMirrorLink:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method protected shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method protected shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceInGearVrDocked()Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceInVrMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return v4

    :cond_2
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->semFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    return v4

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/NotificationData;->shouldFilterOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldFilterOutForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    return v4

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isInputRestricted()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_7

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v2}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_a

    :cond_7
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_b

    return v4

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    goto :goto_0

    :cond_a
    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "StatusBar"

    const-string/jumbo v3, "failed to query dream manager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isAppCoverShowing()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoverViewShowing()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    return v4

    :cond_d
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressScreenOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    return v4

    :cond_e
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasJustLaunchedFullScreenIntent()Z

    move-result v2

    if-eqz v2, :cond_f

    return v4

    :cond_f
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_10

    return v4

    :cond_10
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_11

    return v4

    :cond_11
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    return v4

    :cond_12
    return v5

    :cond_13
    return v5
.end method

.method protected shouldPeekInDeskMode(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isMarkedDex()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->semFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public shouldShowOnIndicator(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showAssistDisclosure()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->showDisclosure()V

    :cond_0
    return-void
.end method

.method public showNavigationBarInFullscreen()V
    .locals 0

    return-void
.end method

.method public showRecentApps(ZZ)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x3fb

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_0

    move v3, v1

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v4, v0, v3, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected showRecents(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "recentapps"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->sendCloseSystemWindows(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/RecentsComponent;->showRecents(ZZ)V

    :cond_0
    return-void
.end method

.method protected showRecentsNextAffiliatedTask()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->showNextAffiliatedTask()V

    :cond_0
    return-void
.end method

.method protected showRecentsPreviousAffiliatedTask()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->showPrevAffiliatedTask()V

    :cond_0
    return-void
.end method

.method public showServiceBox(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public showSnapWindowGuideView(ILjava/lang/String;)V
    .locals 2

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/stackdivider/DividerPanel;->showSnapWindowGuideView(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    new-instance v2, Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>(Lcom/android/systemui/statusbar/NotificationData$Environment;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-string/jumbo v2, "dreams"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/aod/AODManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/aod/AODManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAodManager:Lcom/samsung/android/aod/AODManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "device_provisioned"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v11, 0x1

    invoke-virtual {v2, v3, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "zen_mode"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v11, 0x0

    invoke-virtual {v2, v3, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_screen_show_notifications"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-virtual {v2, v3, v11, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_LOCK_SCREEN_ALLOW_REMOTE_INPUT:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_screen_allow_remote_input"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-virtual {v2, v3, v11, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_screen_allow_private_notifications"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    const/4 v11, 0x1

    const/4 v12, -0x1

    invoke-virtual {v2, v3, v11, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen_minimizing_notification"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationIconsOnlySettingObserver:Landroid/database/ContentObserver;

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-virtual {v2, v3, v11, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1
    sget-boolean v2, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v2, :cond_2

    new-instance v2, Lcom/android/systemui/statusbar/BaseStatusBar$12;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$12;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mServiceBoxObserver:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mServiceBoxObserver:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mServiceBoxObserverDBValueList:[Landroid/net/Uri;

    invoke-virtual {v2, v3, v10}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateServiceBoxMusicNotificationPkg()V

    :cond_2
    const-string/jumbo v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const-class v2, Lcom/android/systemui/recents/Recents;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/RecentsComponent;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    move-object/from16 v0, v18

    iget v2, v0, Landroid/content/res/Configuration;->fontScale:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFontScale:F

    move-object/from16 v0, v18

    iget v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDensity:I

    move-object/from16 v0, v18

    iget v2, v0, Landroid/content/res/Configuration;->FlipFont:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFlipfont:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitorCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KnoxStateMonitor;->registerCallback(Lcom/android/keyguard/KnoxStateMonitorCallback;)V

    new-instance v2, Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    const/16 v2, 0x9

    new-array v6, v2, [I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Ljava/util/List;Ljava/util/List;[ILjava/util/List;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    new-instance v2, Lcom/android/systemui/NotificationBlockManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/NotificationBlockManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlockManager:Lcom/android/systemui/NotificationBlockManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createAndAddWindows()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    const/4 v2, 0x0

    aget v2, v6, v2

    const/4 v3, 0x6

    aget v3, v6, v3

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v10}, Lcom/android/systemui/statusbar/BaseStatusBar;->disable(IIZ)V

    const/4 v2, 0x1

    aget v11, v6, v2

    const/4 v2, 0x7

    aget v12, v6, v2

    const/16 v2, 0x8

    aget v13, v6, v2

    const/4 v14, -0x1

    move-object/from16 v10, p0

    move-object v15, v8

    move-object/from16 v16, v9

    invoke-virtual/range {v10 .. v16}, Lcom/android/systemui/statusbar/BaseStatusBar;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v2, 0x2

    aget v2, v6, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->topAppWindowChanged(Z)V

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    const/4 v3, 0x3

    aget v10, v6, v3

    const/4 v3, 0x4

    aget v11, v6, v3

    const/4 v3, 0x5

    aget v3, v6, v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10, v11, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v27, 0x0

    const/16 v24, 0x0

    :goto_3
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "desktopmode"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-nez v19, :cond_8

    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, -0x1

    invoke-virtual {v2, v3, v10, v11}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    :goto_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->setHeadsUpUser(I)V

    new-instance v22, Landroid/content/IntentFilter;

    invoke-direct/range {v22 .. v22}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v26, Landroid/content/IntentFilter;

    invoke-direct/range {v26 .. v26}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_REPLACED"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v26

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v25, Landroid/content/IntentFilter;

    invoke-direct/range {v25 .. v25}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.android.systemui.statusbar.work_challenge_unlocked_notification_action"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.systemui.statusbar.banner_action_cancel"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.systemui.statusbar.banner_action_setup"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v10, "com.android.systemui.permission.SELF"

    const/4 v11, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAllUsersReceiver:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    const-string/jumbo v2, "vrmanager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v28

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_5
    const-string/jumbo v2, "vr"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IGearVrManagerService;

    move-result-object v23

    if-eqz v23, :cond_9

    :try_start_3
    invoke-interface/range {v23 .. v23}, Lcom/samsung/android/vr/IGearVrManagerService;->isDock()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGearVrDocked:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Lcom/samsung/android/vr/IGearVrManagerService;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAm:Landroid/app/ActivityManager;

    return-void

    :cond_8
    if-eqz v19, :cond_7

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_4

    :catch_0
    move-exception v20

    const-string/jumbo v2, "StatusBar"

    const-string/jumbo v3, "Unable to register notification listener"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :catch_1
    move-exception v20

    const-string/jumbo v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to register VR mode state listener: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_2
    move-exception v20

    const-string/jumbo v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to get GearVR Dock State: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_3
    move-exception v20

    const-string/jumbo v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to register VR mode state listener: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_9
    const-string/jumbo v2, "StatusBar"

    const-string/jumbo v3, "Failed to get GearVrManager."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :catch_4
    move-exception v21

    goto/16 :goto_0
.end method

.method protected startAppNotificationSettingsActivity(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "app_package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "app_uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    :goto_0
    new-instance v2, Lcom/android/systemui/statusbar/BaseStatusBar$22;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$22;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ZZLandroid/app/PendingIntent;)V

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v4, v5, v5, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_0

    return v6

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.systemui.statusbar.work_challenge_unlocked_notification_action"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.extra.INTENT"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.INDEX"

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/high16 v5, 0x54000000

    invoke-static {v4, v6, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string/jumbo v4, "android.intent.extra.INTENT"

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/app/IActivityManager;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected toggleKeyboardShortcuts(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->toggle(Landroid/content/Context;I)V

    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .locals 3

    const/16 v0, 0x402

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public toggleNotificationPanel()V
    .locals 0

    return-void
.end method

.method public toggleRecentApps()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->toggleRecents()V

    return-void
.end method

.method protected toggleRecents()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    invoke-interface {v0, v1}, Lcom/android/systemui/RecentsComponent;->toggleRecents(Landroid/view/Display;)V

    :cond_0
    return-void
.end method

.method public toggleSplitScreen(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->toggleSplitScreenMode(IIZ)V

    return-void
.end method

.method protected abstract toggleSplitScreenMode(IIZ)V
.end method

.method protected unregisterNotificationListener()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "Unable to unregister notification listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 2

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "updateCoverState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected abstract updateHeadsUp(Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationData$Entry;ZZ)V
.end method

.method protected abstract updateKnoxCustomStatusBarText()V
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 20

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, v14}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v12

    if-nez v12, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    invoke-virtual {v3, v12}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;

    invoke-virtual {v3, v12}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Lcom/android/systemui/statusbar/NotificationData$Entry;->cacheContentViews(Landroid/content/Context;Landroid/app/Notification;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v12, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldInterruptInMirrorLink()Z

    move-result v18

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/android/systemui/statusbar/BaseStatusBar;->alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z

    move-result v9

    iget-object v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iput-object v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isMarkedDex()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeskGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeskGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v0, v16

    invoke-virtual {v3, v12, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    :cond_1
    :goto_2
    const/16 v19, 0x0

    if-eqz v10, :cond_7

    :try_start_1
    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_6

    new-instance v2, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    iget v6, v15, Landroid/app/Notification;->iconLevel:I

    iget v7, v15, Landroid/app/Notification;->number:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v8, v15}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3, v15}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/app/Notification;)V

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isNotificationIconsOnlyOn()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->isSameIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v13

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getNotificationPreview()Lcom/android/systemui/statusbar/preview/NotificationPreview;

    move-result-object v17

    if-eqz v17, :cond_3

    if-nez v13, :cond_2

    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->setPreviewIcon(Landroid/widget/ImageView;I)V

    :cond_2
    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->setRow(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setNotificationPreview(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V

    :cond_3
    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t update icon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception v11

    const-string/jumbo v3, "StatusBar"

    const-string/jumbo v4, "Unable to get notification remote views"

    invoke-static {v3, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v0, v16

    invoke-virtual {v3, v12, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    goto/16 :goto_2

    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v19, 0x1

    :cond_7
    :goto_3
    if-nez v19, :cond_8

    new-instance v2, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    iget v6, v15, Landroid/app/Notification;->iconLevel:I

    iget v7, v15, Landroid/app/Notification;->number:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v8, v15}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3, v15}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/app/Notification;)V

    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v3

    if-nez v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t update remote views for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v14, v12, v1, v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateHeadsUp(Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationData$Entry;ZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->bindVetoButtonClickListener(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v3

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v4, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->snapViewIfNeeded(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setAreThereNotifications()V

    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOutlineRect(Landroid/graphics/RectF;)V

    return-void

    :catch_1
    move-exception v11

    const-string/jumbo v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t reapply views for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method

.method protected updateNotificationIconsOnlyState()V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "lockscreen_minimizing_notification"

    const/4 v6, -0x2

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v3, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsDeskMode:Z

    if-eqz v4, :cond_3

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNotificationIconsOnlyOn:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWasInflatedNotificationPreviewIconSlotView()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNotificationIconsOnlyOn:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->inflateNotificationPreviewIconSlotView()V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPreviewController:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPreviewController:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNotificationIconsOnlyOn:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->updateIconContainerVisibility(Z)V

    :cond_2
    return-void

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method protected updateNotificationMoreCue()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isNotificationIconsOnlyOn()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->setIsCoverState(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMoreCue:Lcom/android/systemui/statusbar/NotificationMoreCue;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMoreCue:Lcom/android/systemui/statusbar/NotificationMoreCue;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsWhiteCoverWallpaper:Z

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationMoreCue;->updateMoreCueTintColor(Z)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNeedToMoreCueAnim:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMoreCue:Lcom/android/systemui/statusbar/NotificationMoreCue;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationMoreCue;->releaseMoreCueAnimation()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsWhiteKeyguardWallpaper:Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMoreCue:Lcom/android/systemui/statusbar/NotificationMoreCue;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationMoreCue;->cancelMoreCueAnimation()V

    goto :goto_1
.end method

.method protected abstract updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected abstract updateNotifications()V
.end method

.method protected updatePublicContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 8

    const v7, 0x1020016

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v1

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->adminAllowsUnredactedNotifications(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    const v5, 0x104014e

    :goto_1
    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const v5, 0x104014d

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v7, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v5}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v3, v5, v1, v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onNotificationUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_2
.end method

.method protected abstract updateQuickSettingPanel(Z)V
.end method

.method protected abstract updateQuickSettingPanelVisibility()V
.end method

.method protected updateRowStates()V
    .locals 32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->removeAllViews()V

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mHasBlockableNotification:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v25, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState()Z

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isShadeLockedState()Z

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v13

    const/4 v11, 0x0

    if-eqz v14, :cond_0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getMaxKeyguardNotifications(Z)I

    move-result v11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsDeskMode:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    const v11, 0x7fffffff

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    sget-boolean v27, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v27, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v27

    if-eqz v27, :cond_3

    const/16 v20, 0x0

    :goto_0
    const/16 v24, 0x0

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v3, :cond_34

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    const/4 v5, 0x0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->isMarkedDex()Z

    move-result v27

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeskGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeskGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v27, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    :goto_2
    const/16 v17, 0x0

    iget v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x8

    if-eqz v27, :cond_7

    const/16 v17, 0x1

    :goto_3
    if-nez v14, :cond_1

    if-eqz v17, :cond_8

    :cond_1
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnKeyguard(Z)V

    :goto_4
    if-eqz v13, :cond_9

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnCoveredState(Z)V

    :goto_5
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget v0, v12, Landroid/app/Notification;->semFlags:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x1

    if-eqz v27, :cond_a

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    :cond_2
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    const/16 v20, 0x1

    goto :goto_0

    :cond_4
    const/16 v20, 0x0

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v27, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    goto :goto_2

    :cond_7
    const/16 v17, 0x0

    goto :goto_3

    :cond_8
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnKeyguard(Z)V

    goto :goto_4

    :cond_9
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnCoveredState(Z)V

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/keyguard/KnoxStateMonitor;->isNotificationRowHide()Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    goto :goto_6

    :cond_b
    const/16 v23, 0x0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->isMarkedDex()Z

    move-result v27

    if-eqz v27, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeskGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v27, v0

    if-eqz v27, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeskGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v27, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v27

    if-eqz v27, :cond_18

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v27

    if-eqz v27, :cond_17

    const/16 v23, 0x0

    :goto_7
    const/4 v6, 0x0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->isMarkedDex()Z

    move-result v27

    if-eqz v27, :cond_1e

    if-eqz v5, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeskGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeskGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v27, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v27

    if-nez v27, :cond_1c

    const/4 v6, 0x1

    :goto_8
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v27

    if-eqz v27, :cond_23

    if-eqz v20, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMusicServiceBoxOn()Z

    move-result v27

    if-eqz v27, :cond_22

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mServiceBoxMusicNotificationKey:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_21

    const/16 v19, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v27, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v27

    and-int/lit8 v27, v27, 0x2

    if-nez v27, :cond_24

    const/16 v21, 0x1

    :goto_a
    if-nez v8, :cond_d

    if-eqz v19, :cond_c

    if-eqz v5, :cond_25

    :cond_c
    const/4 v8, 0x0

    :cond_d
    :goto_b
    if-nez v23, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSecLockscreenPublicMode()Z

    move-result v27

    if-eqz v27, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    move/from16 v27, v0

    if-eqz v27, :cond_28

    :cond_e
    if-eqz v14, :cond_f

    if-eqz v6, :cond_27

    :cond_f
    if-nez v14, :cond_10

    if-eqz v15, :cond_11

    :cond_10
    if-eqz v21, :cond_28

    :cond_11
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2c

    const/16 v26, 0x1

    :goto_c
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v27

    if-nez v27, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    move/from16 v27, v0

    const/16 v28, 0x5

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteCoverWallpaper()Z

    move-result v27

    if-eqz v27, :cond_2d

    :cond_13
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForWhiteLockScreen(Z)V

    :goto_d
    sget-boolean v27, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v27, :cond_14

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v27

    if-eqz v27, :cond_14

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/app/Notification;->priority:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_14

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const v28, 0x7f130050

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTag(I)Ljava/lang/Object;

    move-result-object v27

    const-string/jumbo v28, "onGoing"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string/jumbo v28, "com.android.systemui.statusbar.policy.notification.lockscreen"

    const-string/jumbo v29, "NO06"

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v30

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Landroid/app/Notification;->priority:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-static/range {v27 .. v31}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const-string/jumbo v28, "onGoing"

    const v29, 0x7f130050

    move-object/from16 v0, v27

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(ILjava/lang/Object;)V

    :cond_14
    if-nez v5, :cond_15

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v27

    if-eqz v27, :cond_2e

    :cond_15
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAodManager:Lcom/samsung/android/aod/AODManager;

    move-object/from16 v27, v0

    if-eqz v27, :cond_16

    if-eqz v5, :cond_32

    :cond_16
    :goto_f
    sget-boolean v27, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v27, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNotificationIconsOnlyOn:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    if-eqz v19, :cond_2

    if-nez v5, :cond_2

    if-nez v23, :cond_2

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getNotificationPreview()Lcom/android/systemui/statusbar/preview/NotificationPreview;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_17
    const/16 v23, 0x1

    goto/16 :goto_7

    :cond_18
    const/16 v23, 0x0

    goto/16 :goto_7

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v27, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v27

    if-eqz v27, :cond_1b

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v27

    if-eqz v27, :cond_1a

    const/16 v23, 0x0

    goto/16 :goto_7

    :cond_1a
    const/16 v23, 0x1

    goto/16 :goto_7

    :cond_1b
    const/16 v23, 0x0

    goto/16 :goto_7

    :cond_1c
    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_1d
    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_1e
    if-eqz v5, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v27, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v27

    if-nez v27, :cond_1f

    const/4 v6, 0x1

    goto/16 :goto_8

    :cond_1f
    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_20
    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_21
    const/16 v19, 0x1

    goto/16 :goto_9

    :cond_22
    const/16 v19, 0x1

    goto/16 :goto_9

    :cond_23
    const/16 v19, 0x0

    goto/16 :goto_9

    :cond_24
    const/16 v21, 0x0

    goto/16 :goto_a

    :cond_25
    if-eqz v23, :cond_26

    const/4 v8, 0x0

    goto/16 :goto_b

    :cond_26
    const/4 v8, 0x1

    goto/16 :goto_b

    :cond_27
    move/from16 v0, v25

    if-ge v0, v11, :cond_28

    if-nez v19, :cond_f

    :cond_28
    sget-boolean v27, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v27, :cond_29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNotificationIconsOnlyOn:Z

    move/from16 v27, v0

    if-eqz v27, :cond_29

    if-eqz v19, :cond_29

    if-eqz v23, :cond_2b

    :cond_29
    :goto_10
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    :cond_2a
    if-eqz v14, :cond_15

    if-eqz v19, :cond_15

    if-nez v5, :cond_15

    if-nez v23, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->addNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    sget-boolean v27, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v27, :cond_15

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v27

    if-eqz v27, :cond_15

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/app/Notification;->priority:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_15

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const v28, 0x7f130050

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTag(I)Ljava/lang/Object;

    move-result-object v27

    const-string/jumbo v28, "onGoing"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string/jumbo v28, "com.android.systemui.statusbar.policy.notification.lockscreen"

    const-string/jumbo v29, "NO06"

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v30

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Landroid/app/Notification;->priority:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-static/range {v27 .. v31}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const-string/jumbo v28, "onGoing"

    const v29, 0x7f130050

    move-object/from16 v0, v27

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_e

    :cond_2b
    if-eqz v5, :cond_2a

    goto/16 :goto_10

    :cond_2c
    const/16 v26, 0x0

    goto/16 :goto_c

    :cond_2d
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForWhiteLockScreen(Z)V

    goto/16 :goto_d

    :cond_2e
    if-eqz v26, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v28, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v29, v0

    if-eqz v19, :cond_30

    const/16 v27, 0x0

    :goto_11
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAddAnimation(Landroid/view/View;Z)V

    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHasBlockableNotification:Z

    move/from16 v27, v0

    if-eqz v27, :cond_31

    :goto_12
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_e

    :cond_30
    const/16 v27, 0x1

    goto :goto_11

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlockManager:Lcom/android/systemui/NotificationBlockManager;

    move-object/from16 v27, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/NotificationBlockManager;->canBlock(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mHasBlockableNotification:Z

    goto :goto_12

    :cond_32
    if-nez v23, :cond_16

    if-eqz v19, :cond_16

    const/16 v27, 0x4

    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_33

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_f

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAodManager:Lcom/samsung/android/aod/AODManager;

    move-object/from16 v27, v0

    if-eqz v27, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAodManager:Lcom/samsung/android/aod/AODManager;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/aod/AODManager;->updateNotificationKeys(ILjava/util/List;)V

    :cond_35
    if-eqz v14, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getChildCount()I

    move-result v27

    if-lez v27, :cond_3e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsDeskMode:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3d

    const/16 v18, 0x0

    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateOverflowContainerVisibility(Z)V

    if-eqz v18, :cond_38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v27

    if-nez v27, :cond_37

    :cond_36
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    move/from16 v27, v0

    const/16 v28, 0x5

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteCoverWallpaper()Z

    move-result v27

    if-eqz v27, :cond_3f

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->updateBackgroundForWhiteLockScreen(Z)V

    :cond_38
    :goto_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNeedToMoreCueAnim:Z

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v18

    if-eq v0, v1, :cond_39

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNeedToMoreCueAnim:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationMoreCue()V

    :cond_39
    sget-boolean v27, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v27, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPreviewController:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNotificationIconsOnlyOn:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3a

    if-eqz v14, :cond_3a

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->changeToGoneState()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPreviewController:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->updateNotificationPreviewList(Ljava/util/ArrayList;)V

    :cond_3a
    if-lez v25, :cond_40

    const/16 v27, 0x1

    :goto_15
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->hasVisibleNotification:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBottomBarView:Lcom/android/systemui/statusbar/NotificationBottomBarView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    invoke-virtual/range {v27 .. v29}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v29

    add-int/lit8 v29, v29, -0x2

    invoke-virtual/range {v27 .. v29}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v29

    add-int/lit8 v29, v29, -0x3

    invoke-virtual/range {v27 .. v29}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    if-eqz v14, :cond_3c

    sget-boolean v27, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v27, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v28, v0

    if-eqz v8, :cond_41

    const/16 v27, 0x0

    :goto_16
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setExpandState(Z)V

    :cond_3b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHasVisibleNotificationOnKeyguard:Z

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v0, v8, :cond_3c

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHasVisibleNotificationOnKeyguard:Z

    :cond_3c
    return-void

    :cond_3d
    const/16 v18, 0x1

    goto/16 :goto_13

    :cond_3e
    const/16 v18, 0x0

    goto/16 :goto_13

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->updateBackgroundForWhiteLockScreen(Z)V

    goto/16 :goto_14

    :cond_40
    const/16 v27, 0x0

    goto/16 :goto_15

    :cond_41
    const/16 v27, 0x1

    goto :goto_16
.end method

.method protected updateServiceBoxMusicNotificationKey()Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMusicServiceBoxOn()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v5, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mServiceBoxMusicNotificationPkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMediaNotificationKeyList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mServiceBoxMusicNotificationKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mServiceBoxMusicNotificationKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    return v5
.end method

.method protected abstract updateStatusBarHidden()V
.end method

.method protected abstract updateStatusBarIcons()V
.end method

.method protected updateVisibleToUser()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisible:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceInteractive:Z

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    if-eq v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleVisibleToUserChanged(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userAllowsNotificationsInPublic(I)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    return v1
.end method

.method public userAllowsPrivateNotificationsInPublic(I)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {v3, p1}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lock_screen_allow_private_notifications"

    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->adminAllowsUnredactedNotifications(I)Z

    move-result v1

    if-eqz v2, :cond_3

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return v0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    return v3
.end method

.method public userSwitched(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setHeadsUpUser(I)V

    return-void
.end method

.method protected visibilityChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisible:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateVisibleToUser()V

    return-void
.end method

.method protected workAroundBadLayerDrawableOpacity(Landroid/view/View;)V
    .locals 0

    return-void
.end method
