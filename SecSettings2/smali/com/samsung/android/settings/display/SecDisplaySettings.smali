.class public Lcom/samsung/android/settings/display/SecDisplaySettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SecDisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/SecDisplaySettings$10;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$11;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$12;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$13;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$14;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$15;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$16;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$17;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$18;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$19;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$1;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$20;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$21;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$2;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$3;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$4;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$5;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$6;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$7;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$8;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$9;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$SummaryProvider;
    }
.end annotation


# static fields
.field private static DISPLAY_ALWAYS_ON_DISPLAY:I

.field private static DISPLAY_AUTO_BRIGHTNESS:I

.field private static DISPLAY_BLUE_LIGHT_FILTER:I

.field private static DISPLAY_HOME_SCREEN:I

.field private static DISPLAY_KEEP_SCREEN_TURNED_OFF:I

.field private static DISPLAY_LED_INDICATOR:I

.field private static DISPLAY_NIGHT_CLOCK:I

.field private static DISPLAY_OUTDOOR_MODE:I

.field private static DISPLAY_SCREEN_SAVER:I

.field private static DISPLAY_SCREEN_TIMEOUT:I

.field private static final FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field static mDualFolderType:Z

.field static mSupportFolderType:Z

.field private static sAccessibilityVision:Ljava/lang/String;

.field private static sIsSupportNightClock:Z

.field private static sIsSupportOutdoor:Z

.field private static sPowerManager:Landroid/os/PowerManager;


# instance fields
.field private mAccessControlObserver:Landroid/database/ContentObserver;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private final mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

.field private mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mAutoLockmode:Landroid/preference/SwitchPreference;

.field private mBixbyMsgHandler:Landroid/os/Handler;

.field private mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

.field private final mBlueLightFilterObserver:Landroid/database/ContentObserver;

.field private final mBlueLightFilterOptionObserver:Landroid/database/ContentObserver;

.field private final mBrightnessMaxReceiver:Landroid/content/BroadcastReceiver;

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

.field private mCameraGesturePreference:Landroid/preference/SwitchPreference;

.field private final mColorAdjustmentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayScaling:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

.field private mDozePreference:Landroid/preference/SwitchPreference;

.field private mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

.field private mEdgeLighting:Landroid/preference/Preference;

.field private mEdgeScreen:Landroid/preference/PreferenceScreen;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mEmStateReqCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

.field private mFontPreview:Landroid/preference/PreferenceScreen;

.field private mFullScreenApps:Landroid/preference/PreferenceScreen;

.field private final mGrayscaleObserver:Landroid/database/ContentObserver;

.field private mHomeScreen:Landroid/preference/PreferenceScreen;

.field private mIconBackgrounds:Landroid/preference/PreferenceScreen;

.field private mIsDeviceLockTime:Z

.field private mIsEmergencyMode:Z

.field private mIsKioskModeEnabled:I

.field private mIsSecuredLock:Z

.field private mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

.field private mKeyBacklightmode:Landroid/preference/SwitchPreference;

.field private mLiftToWakePreference:Landroid/preference/SwitchPreference;

.field private mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mLinkedData4:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mNavigationbar:Landroid/preference/PreferenceScreen;

.field private final mNegativeColorObserver:Landroid/database/ContentObserver;

.field private mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private mNightClockAOD:Z

.field private final mNightClockObserver:Landroid/database/ContentObserver;

.field private mNightModePreference:Landroid/preference/ListPreference;

.field private mOutdoorMode:Landroid/preference/SwitchPreference;

.field private mOutdoorObserver:Landroid/database/ContentObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRotate:Landroid/preference/SwitchPreference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenMode:Landroid/preference/PreferenceScreen;

.field private mScreenModeObserver:Landroid/database/ContentObserver;

.field private mScreenOffPocket:Landroid/preference/SwitchPreference;

.field private mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

.field private final mScreenResolutionObserver:Landroid/database/ContentObserver;

.field private mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private mScreenTimeDialog:Landroid/app/AlertDialog;

.field private mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

.field private mScreenTimeoutObserver:Landroid/database/ContentObserver;

.field private mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

.field private mScreenZoom:Lcom/android/settings/display/ScreenZoomPreference;

.field private mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

.field private mSimpleLEDIndicator:Landroid/preference/SwitchPreference;

.field private mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private final mSmartStayObserver:Landroid/database/ContentObserver;

.field private mStatusBar:Landroid/preference/PreferenceScreen;

.field private mTapToWakePreference:Landroid/preference/SwitchPreference;

.field private mTouchKeyLight:Landroid/preference/ListPreference;

.field private mWallpaper:Landroid/preference/PreferenceScreen;

.field private mWifiDisplayPreference:Landroid/preference/Preference;

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFullScreenApps:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIconBackgrounds:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNavigationbar:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/display/SecDisplaySettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockAOD:Z

    return v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    return-object v0
.end method

.method static synthetic -get19(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBixbyMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/TimeoutListPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    return-object v0
.end method

.method static synthetic -get21(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    return-object v0
.end method

.method static synthetic -get22(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSimpleLEDIndicator:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get23(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get24(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mStatusBar:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get25(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDisplayScaling:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeScreen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFontPreview:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/res/Resources;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateBlueLightFilterStatus()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateBlueLightFilterSummary()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateScreenModeSummary()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateTouchKeyLightSummary()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/content/res/Resources;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isCameraGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/content/res/Resources;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/display/SecDisplaySettings;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getCurrentResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/display/SecDisplaySettings;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getNightclocksummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->dismissAllDialog()V

    return-void
.end method

.method static synthetic -wrap8(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->setAccessibilityVisionString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateAlwaysOnScreenSummary()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

    const-string/jumbo v1, "nightclock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->sIsSupportNightClock:Z

    sput-boolean v2, Lcom/samsung/android/settings/display/SecDisplaySettings;->sIsSupportOutdoor:Z

    sput-boolean v2, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSupportFolderType:Z

    sput-boolean v2, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDualFolderType:Z

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->sAccessibilityVision:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$17;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings$17;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$18;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings$18;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iput-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockAOD:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsEmergencyMode:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsKioskModeEnabled:I

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$1;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$2;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBrightnessMaxReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$3;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$4;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$5;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$6;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$7;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$8;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$9;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$10;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$10;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilterOptionObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$11;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$11;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mGrayscaleObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$12;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$12;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNegativeColorObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$13;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$13;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$14;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$14;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolutionObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$15;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$15;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$16;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$16;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$19;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$20;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBixbyMsgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$21;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$21;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEmStateReqCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    return-void
.end method

.method private disableUnusableTimeouts(Lcom/android/settings/TimeoutListPreference;)V
    .locals 22

    const-wide/16 v12, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string/jumbo v20, "device_policy"

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    if-eqz v6, :cond_1

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    :goto_0
    const/4 v10, -0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsDeviceLockTime:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c002f

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c0030

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_3

    aget-object v19, v18, v9

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const-wide/32 v20, 0x927c0

    cmp-long v19, v16, v20

    if-gtz v19, :cond_0

    aget-object v19, v7, v9

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v19, v18, v9

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v19

    if-nez v19, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v19, v20, v16

    if-gez v19, :cond_0

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_0

    move v10, v9

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    const-wide/16 v4, 0x0

    goto/16 :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c002b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c002c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    goto :goto_1

    :cond_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v10, v0, :cond_4

    invoke-virtual {v11, v10, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_4
    const-wide/16 v20, 0x0

    cmp-long v19, v4, v20

    if-lez v19, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v19

    if-eqz v19, :cond_6

    :cond_5
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/TimeoutListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/TimeoutListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/TimeoutListPreference;->updateInitialEntry()V

    return-void

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v19, v4, v20

    if-eqz v19, :cond_5

    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_5

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    cmp-long v19, v4, v16

    if-gez v19, :cond_7

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    const v20, 0x7f0b0a19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string/jumbo v19, "SecDisplaySettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "add adminTimeout: index : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "  adminTimeout  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "  timeout"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4
.end method

.method private dismissAllDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private getAODclocksummary()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x21c

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "aod_mode_start_time"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "aod_mode_end_time"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const v3, 0x7f0b04a5

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eq v2, v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v4, v2, 0x3c

    rem-int/lit8 v5, v2, 0x3c

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->mUseCalendar(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ~ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, v1, 0x3c

    rem-int/lit8 v5, v1, 0x3c

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->mUseCalendar(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getCurrentResolution()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "display_size_forced"

    invoke-static {v14, v15}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v6, 0x0

    if-eqz v11, :cond_0

    const-string/jumbo v14, ""

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_0
    :goto_0
    if-eqz v12, :cond_1

    if-nez v6, :cond_2

    :cond_1
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v13, v14, v3}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget v12, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    :cond_2
    const/4 v2, 0x0

    const/16 v14, 0x5a0

    if-lt v12, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v15, 0x7f0b0689

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    const/4 v7, 0x1

    :goto_2
    int-to-float v14, v6

    int-to-float v15, v12

    div-float v9, v14, v15

    const v14, 0x3fe38e39

    cmpl-float v14, v9, v14

    if-lez v14, :cond_3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-static {v14}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v5

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    if-eqz v7, :cond_8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    int-to-long v0, v12

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    int-to-long v0, v6

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    return-object v2

    :cond_4
    const-string/jumbo v14, ","

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    array-length v14, v10

    const/4 v15, 0x1

    if-le v14, v15, :cond_0

    const/4 v14, 0x0

    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v14, 0x1

    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v14, "SecDisplaySettings"

    const-string/jumbo v15, "getInitialDisplaySize() exception!!!"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, ""

    return-object v14

    :cond_5
    const/16 v14, 0x2d0

    if-le v12, v14, :cond_6

    const/16 v14, 0x438

    if-gt v12, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v15, 0x7f0b0688

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v15, 0x7f0b0687

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    int-to-long v0, v6

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    int-to-long v0, v12

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3
.end method

.method private getDexTimeoutPreferenceDescription(J)Ljava/lang/String;
    .locals 9

    const-string/jumbo v2, ""

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0125

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0126

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    array-length v6, v3

    if-ge v1, v6, :cond_0

    aget-object v6, v3, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-nez v6, :cond_1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v7, v0, v1

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x7f0b1544

    invoke-virtual {p0, v7, v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getLedIndicator()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "led_indicator_charing"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "led_indicator_low_battery"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "led_indicator_missed_event"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "led_indicator_voice_recording"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private getNightclocksummary()Ljava/lang/String;
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "night_mode_start_time"

    const/16 v5, 0x4ec

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "night_mode_end_time"

    const/16 v5, 0x1a4

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v4, v2, 0x3c

    rem-int/lit8 v5, v2, 0x3c

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->mUseCalendar(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ~ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, v1, 0x3c

    rem-int/lit8 v5, v1, 0x3c

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->mUseCalendar(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 13

    const-wide/16 v8, 0x3e8

    div-long v6, p1, v8

    const-wide/16 v8, 0x3c

    div-long v2, v6, v8

    const-wide/16 v8, 0x3c

    div-long v0, v2, v8

    const-wide/16 v8, 0x3c

    rem-long/2addr v6, v8

    const-string/jumbo v4, ""

    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-lez v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    long-to-int v8, v0

    const v9, 0x7f130001

    invoke-virtual {v5, v9, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    long-to-int v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v8, 0x3c

    rem-long/2addr v2, v8

    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-lez v5, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-lez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-lez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    long-to-int v9, v2

    const v10, 0x7f130002

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    long-to-int v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-lez v5, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    long-to-int v9, v6

    const v10, 0x7f130003

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    long-to-int v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_4
    const-string/jumbo v5, "SecDisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getTimeoutNewEntry : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static isAODDisabledInPSM(Landroid/content/Context;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "psm_always_on_display_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v0, v1, v3

    const-string/jumbo v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method private isAccessibilityVisionEnabled()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "greyscale_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "high_contrast"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "color_blind"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static isCameraGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isDefaultEasyLauncher()Z
    .locals 5

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.sec.android.app.easylauncher"

    const-string/jumbo v4, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private isDefaultLauncher()Z
    .locals 8

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mPm:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mPm:Landroid/content/pm/PackageManager;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v6, "com.sec.android.app.launcher"

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v4, "SecDisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isDefaultLauncher : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.sec.android.app.launcher"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.sec.android.app.launcher"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v7, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    const-string/jumbo v4, "SecDisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isDefaultLauncher : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v7, "com.sec.android.app.launcher"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "com.sec.android.app.launcher"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    :cond_1
    const-string/jumbo v4, "SecDisplaySettings"

    const-string/jumbo v5, "isDefaultLauncher : true"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsDeviceLockTime:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    return v4

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    const/4 v2, 0x1

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v4
.end method

.method private static isLiftToWakeAvailable(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    const-string/jumbo v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isTapToWakeAvailable(Landroid/content/res/Resources;)Z
    .locals 1

    const v0, 0x11200a5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private mUseCalendar(II)Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    :goto_0
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/16 v2, 0xa

    goto :goto_0
.end method

.method private makeAccessiblityDisablePopup(II)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0251

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v1, v5, v8

    aput-object v1, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0b04de

    invoke-virtual {v4, v6, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/display/SecDisplaySettings$28;

    invoke-direct {v5, p0, p1, p2}, Lcom/samsung/android/settings/display/SecDisplaySettings$28;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;II)V

    const v6, 0x7f0b04cd

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/display/SecDisplaySettings$29;

    invoke-direct {v5, p0, p2}, Lcom/samsung/android/settings/display/SecDisplaySettings$29;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;I)V

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v4, Lcom/samsung/android/settings/display/SecDisplaySettings$30;

    invoke-direct {v4, p0, p2}, Lcom/samsung/android/settings/display/SecDisplaySettings$30;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;I)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    if-ne p1, v9, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0297

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0b17fe

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private makeTalkBackDisablePopup(Landroid/preference/Preference;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->dismissAllDialog()V

    const v3, 0x7f0b0696

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0b0251

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/display/SecDisplaySettings$22;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$22;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    const v5, 0x7f0b04c6

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/display/SecDisplaySettings$23;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$23;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/samsung/android/settings/display/SecDisplaySettings$24;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$24;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private maketurnOffUniversalPopup(Landroid/preference/Preference;)V
    .locals 7

    const v6, 0x7f0b02aa

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->dismissAllDialog()V

    const v2, 0x7f0b0696

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0b0251

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/display/SecDisplaySettings$25;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$25;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    const v4, 0x7f0b04c6

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/display/SecDisplaySettings$26;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$26;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/samsung/android/settings/display/SecDisplaySettings$27;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$27;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static setAccessibilityVisionString(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->sAccessibilityVision:Ljava/lang/String;

    return-void
.end method

.method private setLedIndicator(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "led_indicator_charing"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "led_indicator_low_battery"

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "led_indicator_missed_event"

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "led_indicator_voice_recording"

    if-eqz p1, :cond_3

    :goto_3
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method private updateAlwaysOnScreenSummary()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "aod_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "aod_content_type"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_3

    const v4, 0x7f0b04a2

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "\u3001"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getAODclocksummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_1
    :goto_4
    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    const v4, 0x7f0b04a3

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    const v4, 0x7f0b04a4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v5, 0x7f0b048c

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_3

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "aod_mode"

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8

    const v4, 0x7f0b1bd9

    :goto_5
    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_4

    :cond_8
    const v4, 0x7f0b1bda

    goto :goto_5
.end method

.method private updateBackKeyLightSummary()V
    .locals 9

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c00c5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c00c4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "key_backlight_timeout"

    const/16 v7, 0xbb8

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    aget-object v5, v4, v8

    if-eqz v5, :cond_0

    aget-object v3, v4, v8

    :cond_0
    const/4 v2, 0x0

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    aget-object v5, v1, v2

    if-eqz v5, :cond_3

    aget-object v5, v1, v2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    aget-object v3, v4, v2

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateBlueLightFilterStatus()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAccessibilityVisionEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setEnabledAppearance(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private updateBlueLightFilterSummary()V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "blue_light_filter_type"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "blue_light_filter_scheduled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0674

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {v5}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_2
    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v6, 0x7f0b067a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v6, 0x7f0b067b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0675

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2
.end method

.method private updateEasyModeSummary()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "easy_mode_switch"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    const v2, 0x7f0b06e2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setSummary(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    const v2, 0x7f0b06e3

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setSummary(I)V

    goto :goto_1
.end method

.method private updateFontPreviewSummary()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFontPreview:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFontPreview:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->getFontPreviewSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateHomeScreenSummary()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mHomeScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDefaultLauncher()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mHomeScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0647

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mHomeScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateIconBackgroundsState()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIconBackgrounds:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "current_sec_active_themepackage"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "current_sec_appicon_theme_package"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "SecDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateIconBackgroundsState isDefaultLauncher : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDefaultLauncher()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isDefaultEasyLauncher() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDefaultEasyLauncher()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", currentTheme : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", currentIcon : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDefaultLauncher()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDefaultEasyLauncher()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIconBackgrounds:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "tap_to_icon"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIconBackgrounds:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_6

    const v3, 0x7f0b0636

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIconBackgrounds:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    const v3, 0x7f0b0637

    goto :goto_2
.end method

.method private updateOutdoorModeSummary()V
    .locals 5

    const/16 v4, 0xf

    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0b0693

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f0b0692

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateScreenModeSummary()V
    .locals 8

    const v7, 0x7f0b06c1

    const v6, 0x7f0b06c0

    const v5, 0x7f0b06be

    const v4, 0x7f0b06bf

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b06ba

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private updateScreenSaverSummary()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v2, 0x7f0b0c9b

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    const v2, 0x7f0b0c9c

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateState()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateOutdoorModeSummary()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateFontPreviewSummary()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateTouchKeyLightSummary()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateScreenSaverSummary()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateBackKeyLightSummary()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateAlwaysOnScreenSummary()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateEasyModeSummary()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateIconBackgroundsState()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateScreenModeSummary()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateBlueLightFilterSummary()V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "screen_brightness_mode"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_7

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wake_gesture_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_8

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "doze_enabled"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_9

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    sget-boolean v2, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDualFolderType:Z

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoLockmode:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "sub_lcd_auto_lock"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "key_night_mode"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_b

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "double_tap_to_wake"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_c

    move v2, v3

    :goto_5
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "camera_gesture_disabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_d

    move v2, v3

    :goto_6
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "camera_double_tap_power_gesture_disabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_e

    :goto_7
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_6
    return-void

    :cond_7
    move v2, v4

    goto/16 :goto_0

    :cond_8
    move v2, v4

    goto/16 :goto_1

    :cond_9
    move v2, v4

    goto :goto_2

    :cond_a
    move v2, v4

    goto :goto_3

    :cond_b
    move v2, v4

    goto :goto_4

    :cond_c
    move v2, v4

    goto :goto_5

    :cond_d
    move v2, v4

    goto :goto_6

    :cond_e
    move v3, v4

    goto :goto_7
.end method

.method private updateStateForDesktopMenuItem()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v0}, Lcom/android/settings/TimeoutListPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/settings/TimeoutListPreference;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAccessibilityVisionEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_4
    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeScreen:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateBlueLightFilterStatus()V

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mHomeScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mHomeScreen:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_9
    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateHomeScreenSummary()V

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNavigationbar:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_b

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNavigationbar:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_16

    move v0, v2

    :goto_7
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFullScreenApps:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_c

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFullScreenApps:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "screen_timeout_for_dex"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_18

    :goto_9
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_e
    return-void

    :cond_f
    move v0, v2

    goto/16 :goto_0

    :cond_10
    move v0, v2

    goto/16 :goto_1

    :cond_11
    move v0, v2

    goto/16 :goto_2

    :cond_12
    move v0, v2

    goto/16 :goto_3

    :cond_13
    move v0, v2

    goto/16 :goto_4

    :cond_14
    move v0, v2

    goto/16 :goto_5

    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDefaultLauncher()Z

    move-result v0

    goto :goto_6

    :cond_16
    move v0, v1

    goto :goto_7

    :cond_17
    move v0, v2

    goto :goto_8

    :cond_18
    move v1, v2

    goto :goto_9
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 15

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v5}, Lcom/android/settings/TimeoutListPreference;->isDisabledByAdmin()Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x7f0b1cdd

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    iget-boolean v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsDeviceLockTime:Z

    if-eqz v10, :cond_7

    iget-boolean v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsSecuredLock:Z

    if-eqz v10, :cond_7

    cmp-long v10, p1, v2

    if-lez v10, :cond_7

    const v10, 0x7f0b0a1b

    invoke-virtual {v5, v10}, Lcom/android/settings/TimeoutListPreference;->setSummary(I)V

    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-nez v10, :cond_0

    invoke-virtual {v5, v6}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v10, p1, v10

    if-gez v10, :cond_2

    const-string/jumbo v6, ""

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5}, Lcom/android/settings/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v1, :cond_3

    array-length v10, v1

    if-nez v10, :cond_4

    :cond_3
    const-string/jumbo v6, ""

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_2
    array-length v10, v7

    if-ge v4, v10, :cond_6

    aget-object v10, v7, v4

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v10, p1, v8

    if-ltz v10, :cond_5

    move v0, v4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aget-object v11, v1, v0

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f0b1544

    invoke-virtual {p0, v11, v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aget-object v10, v7, v0

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    goto :goto_0

    :cond_7
    invoke-virtual {v5, v6}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateTouchKeyLightSummary()V
    .locals 5

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "button_key_light"

    const/16 v4, 0x1770

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0b1a94

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2e

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string/jumbo v6, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "com.samsung.android.app.aodservice"

    const-string/jumbo v6, "com.samsung.android.app.aodservice.settings.AODSettingsMain"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v0, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v6, 0x7f0b048b

    iput v6, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "com.android.settings.Settings$HDReffectSettinsActivity"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v1, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iget-object v5, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string/jumbo v6, "videoEnhancer"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v6, 0x7f0b04a6

    iput v6, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "com.android.settings.Settings$InputMethodAndLanguageSettingsActivity"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v2, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v6, 0x7f0b1794

    iput v6, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData4:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "com.android.settings.Settings$AccessibilitySettingsVisionActivity"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData4:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v3, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData4:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v6, 0x7f0b0305

    iput v6, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setFlipCloseStatus(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v0}, Lcom/android/settings/TimeoutListPreference;->rotateSettingsListPreference()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 31

    invoke-super/range {p0 .. p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const v27, 0x7f0800e1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    const-string/jumbo v28, "power"

    invoke-virtual/range {v27 .. v28}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/PowerManager;

    sput-object v27, Lcom/samsung/android/settings/display/SecDisplaySettings;->sPowerManager:Landroid/os/PowerManager;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v27

    const/16 v28, 0x64

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_13

    const/16 v16, 0x1

    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v27

    if-eqz v27, :cond_14

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "color_blind"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_15

    const/4 v14, 0x1

    :goto_2
    invoke-static {v5}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsEmergencyMode:Z

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_0

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsEmergencyMode:Z

    move/from16 v27, v0

    if-eqz v27, :cond_16

    const v27, 0x7f0b153e

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    :goto_3
    const-string/jumbo v27, "screen_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2

    if-nez v17, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v27

    if-eqz v27, :cond_17

    :cond_1
    const-string/jumbo v27, "screen_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v27, "SecDisplaySettings"

    const-string/jumbo v28, "remove Screen mode"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_4
    const-string/jumbo v27, "DeviceLockTime"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v28

    const-string/jumbo v29, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsDeviceLockTime:Z

    new-instance v25, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsSecuredLock:Z

    const-string/jumbo v27, "status_bar"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mStatusBar:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-nez v27, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mStatusBar:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    const-string/jumbo v27, "screensaver"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x112006d

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v27

    if-eqz v27, :cond_4

    if-eqz v16, :cond_1a

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    :goto_5
    const-string/jumbo v27, "smartscreen_stay"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v27

    if-nez v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v27

    if-eqz v27, :cond_1c

    :cond_6
    const-string/jumbo v27, "smartscreen_stay"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_7
    :goto_6
    const-string/jumbo v27, "secbrightness"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v27

    if-eqz v27, :cond_8

    const-string/jumbo v27, "screen_brightness_mode"

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->brightnessNotifyChange()V

    :cond_8
    const-string/jumbo v27, "screen_timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    const-string/jumbo v27, "screen_off_timeout"

    const-wide/16 v28, 0x7530

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsDeviceLockTime:Z

    move/from16 v27, v0

    if-eqz v27, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v27, v0

    const v28, 0x7f0c002f

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/TimeoutListPreference;->setEntries(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v27, v0

    const v28, 0x7f0c0030

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/TimeoutListPreference;->setEntryValues(I)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v27, v0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/TimeoutListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v27

    if-eqz v27, :cond_a

    const-string/jumbo v27, "screen_timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_a
    invoke-static {v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_1d

    const-string/jumbo v27, "lift_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_7
    const-string/jumbo v27, "doze"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v27, "touch_key_light"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/ListPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x112006a

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v27

    if-nez v27, :cond_1e

    const-string/jumbo v27, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_b

    const-string/jumbo v27, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1e

    :cond_b
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result v27

    if-eqz v27, :cond_1f

    const-string/jumbo v27, "tap_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isCameraGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v27

    if-eqz v27, :cond_20

    const-string/jumbo v27, "camera_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v27

    if-eqz v27, :cond_21

    const-string/jumbo v27, "camera_double_tap_power_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_b
    const-string/jumbo v27, "auto_rotate"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotate:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotate:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-nez v27, :cond_22

    invoke-static {v5}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_22

    const-string/jumbo v27, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotate:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_c
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    const-string/jumbo v28, "display"

    invoke-virtual/range {v27 .. v28}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    const-string/jumbo v27, "wifi_display"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    const/4 v6, 0x1

    :try_start_0
    const-string/jumbo v27, "window"

    invoke-static/range {v27 .. v27}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v27

    if-eqz v27, :cond_23

    const/4 v6, 0x0

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    const-string/jumbo v28, "com.sec.feature.folder_type"

    invoke-virtual/range {v27 .. v28}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    const-string/jumbo v28, "com.sec.feature.dual_lcd"

    invoke-virtual/range {v27 .. v28}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_24

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v27

    :goto_e
    sput-boolean v27, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDualFolderType:Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    const-string/jumbo v28, "com.sec.feature.folder_type"

    invoke-virtual/range {v27 .. v28}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v27

    sput-boolean v27, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSupportFolderType:Z

    const-string/jumbo v27, "font_preview"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFontPreview:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFontPreview:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    if-eqz v27, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v27

    if-nez v27, :cond_d

    if-nez v16, :cond_d

    if-eqz v17, :cond_25

    :cond_d
    const-string/jumbo v27, "font_preview"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_e
    :goto_f
    const-string/jumbo v27, "sub_lcd_auto_lock"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoLockmode:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoLockmode:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoLockmode:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    const-string/jumbo v27, "sub_lcd_auto_lock"

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_26

    const/16 v27, 0x1

    :goto_10
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v27, "key_backlight"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v27, "key_night_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    const-string/jumbo v27, "key_night_mode"

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_27

    const/16 v27, 0x1

    :goto_11
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    sget-boolean v27, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDualFolderType:Z

    if-eqz v27, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x5

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    const/16 v29, 0x7

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x1

    aput-object v29, v28, v30

    const v29, 0x7f0b062d

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    const-string/jumbo v28, "content://com.sec.knox.provider2/KioskMode"

    const-string/jumbo v29, "isKioskModeEnabled"

    invoke-static/range {v27 .. v29}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsKioskModeEnabled:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsKioskModeEnabled:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_f

    const-string/jumbo v27, "screensaver"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v27, "wallpaper"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mWallpaper:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mWallpaper:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    if-eqz v27, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mWallpaper:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_f
    const-string/jumbo v27, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->getWallpaperVersionCode(Landroid/content/Context;)I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2a

    :cond_10
    :goto_13
    const-string/jumbo v27, "wallpaper"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_11
    const-string/jumbo v27, "outdoor_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_2b

    const/16 v27, 0x1

    :goto_14
    sput-boolean v27, Lcom/samsung/android/settings/display/SecDisplaySettings;->sIsSupportOutdoor:Z

    sget-boolean v27, Lcom/samsung/android/settings/display/SecDisplaySettings;->sIsSupportOutdoor:Z

    if-nez v27, :cond_2c

    const-string/jumbo v27, "outdoor_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_12
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string/jumbo v28, "UPSM"

    const v29, 0x7f0800e1

    move-object/from16 v0, v27

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v21

    if-eqz v21, :cond_2d

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_16
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_2d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto :goto_16

    :cond_13
    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_14
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_15
    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_16
    const v27, 0x7f0b1509

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_3

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v27

    if-eqz v27, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    const v28, 0x7f040270

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->setWidgetLayoutResource(I)V

    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAccessibilityVisionEnabled()Z

    move-result v27

    if-eqz v27, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_1a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_5

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_6

    :cond_1d
    const-string/jumbo v27, "lift_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1e
    const-string/jumbo v27, "touch_key_light"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1f
    const-string/jumbo v27, "tap_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_20
    const-string/jumbo v27, "camera_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_21
    const-string/jumbo v27, "camera_double_tap_power_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_22
    const-string/jumbo v27, "auto_rotate"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_23
    const/4 v6, 0x1

    goto/16 :goto_d

    :catch_0
    move-exception v12

    const-string/jumbo v27, "SecDisplaySettings"

    const-string/jumbo v28, "Failing checking whether status bar can hide"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x0

    goto/16 :goto_d

    :cond_24
    const/16 v27, 0x0

    goto/16 :goto_e

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFontPreview:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_f

    :cond_26
    const/16 v27, 0x0

    goto/16 :goto_10

    :cond_27
    const/16 v27, 0x0

    goto/16 :goto_11

    :cond_28
    sget-boolean v27, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDualFolderType:Z

    if-nez v27, :cond_29

    sget-boolean v27, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSupportFolderType:Z

    if-eqz v27, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoLockmode:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_12

    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoLockmode:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_12

    :cond_2a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_11

    goto/16 :goto_13

    :cond_2b
    const/16 v27, 0x1

    goto/16 :goto_14

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_15

    :cond_2d
    const-string/jumbo v27, "night_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/ListPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2e

    const-string/jumbo v27, "uimode"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/UiModeManager;

    invoke-virtual/range {v24 .. v24}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    move-object/from16 v27, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2e
    const-string/jumbo v27, "edge_lighting"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeLighting:Landroid/preference/Preference;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v27

    const-string/jumbo v28, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeLighting:Landroid/preference/Preference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2f

    if-eqz v23, :cond_47

    const-string/jumbo v27, "panel"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    :goto_17
    if-nez v27, :cond_48

    const-string/jumbo v27, "edge_lighting"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_2f
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeLighting:Landroid/preference/Preference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_30

    const-string/jumbo v27, "edge_lighting"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_30
    const-string/jumbo v27, "key_simple_led_indicator_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSimpleLEDIndicator:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSimpleLEDIndicator:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_31

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v27

    const-string/jumbo v28, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSimpleLEDIndicator:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_31
    :goto_19
    const-string/jumbo v27, "display_scaling"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDisplayScaling:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDisplayScaling:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_32

    const-string/jumbo v27, "display_scaling"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_32
    const-string/jumbo v27, "easy_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_34

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v27

    if-eqz v27, :cond_4a

    :cond_34
    const-string/jumbo v27, "easy_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :goto_1a
    const-string/jumbo v27, "icon_backgrounds"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIconBackgrounds:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIconBackgrounds:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    if-eqz v27, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIconBackgrounds:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_35
    const-string/jumbo v27, "screen_off_pocket"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_36
    const-string/jumbo v27, "always_on_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_38

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v27

    const-string/jumbo v28, "com.samsung.android.app.aodservice"

    invoke-static/range {v27 .. v28}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_37

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v27

    if-eqz v27, :cond_4b

    :cond_37
    const-string/jumbo v27, "always_on_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_38
    :goto_1b
    const-string/jumbo v27, "night_clock"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3a

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_4d

    if-nez v17, :cond_4d

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v27

    if-eqz v27, :cond_39

    sget-boolean v27, Lcom/samsung/android/settings/display/SecDisplaySettings;->sIsSupportNightClock:Z

    if-eqz v27, :cond_4d

    :cond_39
    const-string/jumbo v27, "-nightclock"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_4e

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockAOD:Z

    :goto_1c
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3a
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "blue_light_filter"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_4f

    const/4 v13, 0x1

    :goto_1e
    const-string/jumbo v27, "blue_light_filter"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setChecked(Z)V

    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "greyscale_mode"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_50

    const v27, 0x7f0b033a

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v27

    sput-object v27, Lcom/samsung/android/settings/display/SecDisplaySettings;->sAccessibilityVision:Ljava/lang/String;

    :cond_3c
    :goto_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3d

    sget-object v27, Lcom/samsung/android/settings/display/SecDisplaySettings;->sAccessibilityVision:Ljava/lang/String;

    const-string/jumbo v28, ""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_52

    :cond_3d
    :goto_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string/jumbo v28, "com.samsung.app.cocktailbarservice.settings.SETTINGSMAIN"

    invoke-static/range {v27 .. v28}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_3e

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v27

    if-eqz v27, :cond_3f

    :cond_3e
    const-string/jumbo v27, "edge_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_3f
    const-string/jumbo v27, "screen_resolution"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    const-string/jumbo v27, "WQHD,FHD,HD"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_40

    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v27, v0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getCurrentResolution()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_41
    const-string/jumbo v27, "edge_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v27, "screen_zoom"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Lcom/android/settings/display/ScreenZoomPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenZoom:Lcom/android/settings/display/ScreenZoomPreference;

    const-string/jumbo v27, "screen_zoom"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v27, "homescreen"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mHomeScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mHomeScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    if-eqz v27, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mHomeScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v27

    if-nez v27, :cond_53

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDefaultLauncher()Z

    move-result v27

    :goto_21
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateHomeScreenSummary()V

    :cond_42
    const-string/jumbo v27, "navigation_Bar"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNavigationbar:Landroid/preference/PreferenceScreen;

    const-string/jumbo v27, "SupportLightNavigationBar|SupportForceTouch|SupportCustomBgColor|SupportNaviBarRemoteView"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNavigationbar:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    if-eqz v27, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNavigationbar:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v27

    if-nez v27, :cond_54

    const/16 v27, 0x1

    :goto_22
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_43
    :goto_23
    const-string/jumbo v27, "full_screen_apps"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFullScreenApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFullScreenApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    if-eqz v27, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFullScreenApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_44
    const-string/jumbo v27, "auto_brightness"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_56

    const-string/jumbo v27, "auto_brightness"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_45
    :goto_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_57

    const-string/jumbo v27, "screen_timeout_for_dex"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_46

    const-string/jumbo v27, "persist.service.dex.timeout"

    const-wide/32 v28, 0x927c0

    invoke-static/range {v27 .. v29}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v27, v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getDexTimeoutPreferenceDescription(J)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/TimeoutListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_46
    :goto_25
    new-instance v27, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct/range {v27 .. v27}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_47
    const/16 v27, 0x0

    goto/16 :goto_17

    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeLighting:Landroid/preference/Preference;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_18

    :cond_49
    const-string/jumbo v27, "key_simple_led_indicator_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_19

    :cond_4a
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v27

    const-string/jumbo v28, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_34

    goto/16 :goto_1a

    :cond_4b
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1b

    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_1b

    :cond_4d
    const-string/jumbo v27, "night_clock"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_4e
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockAOD:Z

    goto/16 :goto_1c

    :cond_4f
    const/4 v13, 0x0

    goto/16 :goto_1e

    :cond_50
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "high_contrast"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_51

    const v27, 0x7f0b0306

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v27

    sput-object v27, Lcom/samsung/android/settings/display/SecDisplaySettings;->sAccessibilityVision:Ljava/lang/String;

    goto/16 :goto_1f

    :cond_51
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "color_blind"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_3c

    const v27, 0x7f0b0252

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v27

    sput-object v27, Lcom/samsung/android/settings/display/SecDisplaySettings;->sAccessibilityVision:Ljava/lang/String;

    goto/16 :goto_1f

    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    sget-object v29, Lcom/samsung/android/settings/display/SecDisplaySettings;->sAccessibilityVision:Ljava/lang/String;

    const/16 v30, 0x0

    aput-object v29, v28, v30

    const v29, 0x7f0b0673

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    aput-object v29, v28, v30

    sget-object v29, Lcom/samsung/android/settings/display/SecDisplaySettings;->sAccessibilityVision:Ljava/lang/String;

    const/16 v30, 0x2

    aput-object v29, v28, v30

    const v29, 0x7f0b0673

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x3

    aput-object v29, v28, v30

    const v29, 0x7f0b022d

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setToastMsg(Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_53
    const/16 v27, 0x0

    goto/16 :goto_21

    :cond_54
    const/16 v27, 0x0

    goto/16 :goto_22

    :cond_55
    const-string/jumbo v27, "navigation_Bar"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_23

    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v27

    const-string/jumbo v28, "SEC_FLOATING_FEATURE_LCD_CONFIG_CONTROL_AUTO_BRIGHTNESS"

    const/16 v29, 0x2

    invoke-virtual/range {v27 .. v29}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v27

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f0b0601

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_24

    :cond_57
    const-string/jumbo v27, "screen_timeout_for_dex"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_25
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBrightnessMaxReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->unRregisterBrightnessObserver()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilterOptionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mGrayscaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNegativeColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolutionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setInitFinish(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Display"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 38

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v33, "screen_timeout"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_13

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f100181

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v33

    sput v33, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_TIMEOUT:I

    sparse-switch v30, :sswitch_data_0

    :goto_0
    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v33

    if-eqz v33, :cond_0

    const-string/jumbo v33, "SecDisplaySettings"

    const-string/jumbo v34, "isInDefaultTimeoutList = true"

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "screen_off_timeout_rollback"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    if-eqz v33, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "screen_off_timeout"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v33, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateTimeoutPreferenceDescription(J)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    const-string/jumbo v34, "device_policy"

    invoke-virtual/range {v33 .. v34}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/admin/DevicePolicyManager;

    if-eqz v12, :cond_12

    const/16 v33, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v24

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "lock_screen_lock_after_timeout"

    const-wide/16 v36, 0x1388

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    const-wide/16 v34, 0x0

    cmp-long v33, v24, v34

    if-eqz v33, :cond_2

    cmp-long v33, v24, v10

    if-gez v33, :cond_2

    move-wide/from16 v10, v24

    :cond_2
    const-string/jumbo v33, "SecDisplaySettings"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "value: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ", currentDeviceLockTimeout: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsDeviceLockTime:Z

    move/from16 v33, v0

    if-eqz v33, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsSecuredLock:Z

    move/from16 v33, v0

    if-eqz v33, :cond_3

    const-wide/16 v34, 0x0

    cmp-long v33, v10, v34

    if-eqz v33, :cond_3

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v34, v0

    cmp-long v33, v34, v10

    if-lez v33, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->showScreenTimeDialog()V

    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_7

    const-string/jumbo v33, "SecDisplaySettings"

    const-string/jumbo v34, "preference mAutoBrightnessPreference"

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v33

    if-eqz v33, :cond_5

    if-nez v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "brightness_user_touch"

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v33

    if-eqz v33, :cond_34

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v33

    if-eqz v33, :cond_34

    const/16 v33, 0x1

    move/from16 v0, v33

    if-eq v7, v0, :cond_34

    const/16 v23, 0x27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/settings/Utils;->getSamsungNTTHomeDefaultBrightness(Landroid/content/Context;)[I

    move-result-object v16

    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v33, "com.nttdocomo.android.dhome"

    const-string/jumbo v34, "com.nttdocomo.android.dhome.HomeActivity"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v33, v0

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_4

    const/16 v33, 0x1

    aget v23, v16, v33

    :cond_4
    invoke-virtual {v4, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "screen_brightness"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "screen_brightness_mode"

    if-eqz v6, :cond_35

    const/16 v33, 0x1

    :goto_5
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v33

    if-eqz v33, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->onBrightnessChanged()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->changeSeekbarColor(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightnessIcon(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f100169

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v33

    sput v33, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_AUTO_BRIGHTNESS:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    sget v35, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_AUTO_BRIGHTNESS:I

    if-eqz v6, :cond_36

    const/16 v33, 0x3e8

    :goto_6
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_8

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "wake_gesture_enabled"

    if-eqz v32, :cond_37

    const/16 v33, 0x1

    :goto_7
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_9

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "doze_enabled"

    if-eqz v32, :cond_38

    const/16 v33, 0x1

    :goto_8
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_a

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "double_tap_to_wake"

    if-eqz v32, :cond_39

    const/16 v33, 0x1

    :goto_9
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_b

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "camera_gesture_disabled"

    if-eqz v32, :cond_3a

    const/16 v33, 0x0

    :goto_a
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_c

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "camera_double_tap_power_gesture_disabled"

    if-eqz v32, :cond_3b

    const/16 v33, 0x0

    :goto_b
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_d

    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const-string/jumbo v33, "uimode"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/UiModeManager;

    invoke-virtual/range {v29 .. v30}, Landroid/app/UiModeManager;->setNightMode(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_d
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_f

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "blue_light_filter"

    if-eqz v32, :cond_3c

    const/16 v33, 0x1

    :goto_d
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "blue_light_filter_scheduled"

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    if-eqz v33, :cond_3d

    const/16 v19, 0x1

    :goto_e
    if-eqz v32, :cond_e

    if-eqz v19, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    const v34, 0x7f0b067f

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    :cond_e
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    new-instance v33, Landroid/content/ComponentName;

    const-string/jumbo v34, "com.samsung.android.bluelightfilter"

    const-string/jumbo v35, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct/range {v33 .. v35}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v32, :cond_3e

    const-string/jumbo v33, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v34, 0x15

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f1001a2

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v33

    sput v33, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_BLUE_LIGHT_FILTER:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    sget v35, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_BLUE_LIGHT_FILTER:I

    if-eqz v32, :cond_3f

    const/16 v33, 0x1

    :goto_10
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_10

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    if-eqz v32, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_40

    const/16 v33, 0x0

    const v34, 0x7f0b048a

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->makeAccessiblityDisablePopup(II)V

    :cond_10
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    if-eqz v28, :cond_11

    move-object/from16 v31, p2

    check-cast v31, Ljava/lang/String;

    const-string/jumbo v33, "persist.service.dex.timeout"

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v33, "screen_off_timeout"

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v33, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v34

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getDexTimeoutPreferenceDescription(J)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_11
    const/16 v33, 0x1

    return v33

    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    sget v34, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_TIMEOUT:I

    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    sget v34, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_TIMEOUT:I

    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    sget v34, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_TIMEOUT:I

    const/16 v35, 0x2

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    sget v34, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_TIMEOUT:I

    const/16 v35, 0x3

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    sget v34, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_TIMEOUT:I

    const/16 v35, 0x4

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    sget v34, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_TIMEOUT:I

    const/16 v35, 0x5

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception v14

    const-string/jumbo v33, "SecDisplaySettings"

    const-string/jumbo v34, "could not persist screen timeout setting"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_12
    const-wide/16 v24, 0x0

    goto/16 :goto_2

    :cond_13
    const-string/jumbo v33, "screensaver"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_17

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    if-eqz v33, :cond_14

    const/16 v30, 0x1

    :goto_12
    const/16 v33, 0x1

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_15

    new-instance v33, Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Lcom/android/settingslib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Lcom/android/settingslib/dream/DreamBackend;->setEnabled(Z)V

    :goto_13
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateScreenSaverSummary()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f10019b

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v33

    sput v33, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_SAVER:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    sget v35, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_SAVER:I

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    if-eqz v33, :cond_16

    const/16 v33, 0x3e8

    :goto_14
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_14
    const/16 v30, 0x0

    goto :goto_12

    :cond_15
    new-instance v33, Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Lcom/android/settingslib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lcom/android/settingslib/dream/DreamBackend;->setEnabled(Z)V

    goto :goto_13

    :cond_16
    const/16 v33, 0x0

    goto :goto_14

    :cond_17
    const-string/jumbo v33, "always_on_screen"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_20

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v33

    const-string/jumbo v34, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v0, v8, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0b0609

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0b048b

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aput-object v5, v34, v35

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    const/16 v33, 0x0

    return v33

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "accessibility_display_magnification_enabled"

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    if-eqz v33, :cond_19

    const/16 v20, 0x1

    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "finger_magnifier"

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    if-nez v33, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "FmMagnifier"

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    if-eqz v33, :cond_1b

    const/16 v21, 0x1

    :goto_16
    if-eqz v32, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_1c

    const/16 v33, 0x0

    const v34, 0x7f0b048b

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->makeAccessiblityDisablePopup(II)V

    goto/16 :goto_3

    :cond_19
    const/16 v20, 0x0

    goto :goto_15

    :cond_1a
    const/16 v21, 0x1

    goto :goto_16

    :cond_1b
    const/16 v21, 0x0

    goto :goto_16

    :cond_1c
    if-eqz v32, :cond_1d

    if-eqz v20, :cond_1d

    const/16 v33, 0x1

    const v34, 0x7f0b048b

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->makeAccessiblityDisablePopup(II)V

    goto/16 :goto_3

    :cond_1d
    if-eqz v32, :cond_1e

    if-eqz v21, :cond_1e

    const/16 v33, 0x2

    const v34, 0x7f0b048b

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->makeAccessiblityDisablePopup(II)V

    goto/16 :goto_3

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "aod_mode"

    if-eqz v32, :cond_1f

    const/16 v33, 0x1

    :goto_17
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_1f
    const/16 v33, 0x0

    goto :goto_17

    :cond_20
    const-string/jumbo v33, "touch_key_light"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_21

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "button_key_light"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    move-object/from16 v33, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_18
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateTouchKeyLightSummary()V

    goto/16 :goto_3

    :catch_1
    move-exception v14

    const-string/jumbo v33, "SecDisplaySettings"

    const-string/jumbo v34, "could not persist Touch key light setting"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    :cond_21
    const-string/jumbo v33, "sub_lcd_auto_lock"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_23

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "sub_lcd_auto_lock"

    if-eqz v32, :cond_22

    const/16 v33, 0x1

    :goto_19
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_22
    const/16 v33, 0x0

    goto :goto_19

    :cond_23
    const-string/jumbo v33, "key_night_mode"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_25

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "key_night_mode"

    if-eqz v32, :cond_24

    const/16 v33, 0x1

    :goto_1a
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_24
    const/16 v33, 0x0

    goto :goto_1a

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_27

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "display_outdoor_mode"

    if-eqz v32, :cond_26

    const/16 v33, 0x1

    :goto_1b
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f10016a

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v33

    sput v33, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_OUTDOOR_MODE:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    sget v34, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_OUTDOOR_MODE:I

    invoke-static/range {v33 .. v34}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_3

    :cond_26
    const/16 v33, 0x0

    goto :goto_1b

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotate:Landroid/preference/SwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_29

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    if-eqz v32, :cond_28

    const/16 v33, 0x0

    :goto_1c
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    goto/16 :goto_3

    :cond_28
    const/16 v33, 0x1

    goto :goto_1c

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSimpleLEDIndicator:Landroid/preference/SwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2b

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->setLedIndicator(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f100197

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v33

    sput v33, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_LED_INDICATOR:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    sget v35, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_LED_INDICATOR:I

    if-eqz v32, :cond_2a

    const/16 v33, 0x3e8

    :goto_1d
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_2a
    const/16 v33, 0x0

    goto :goto_1d

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/preference/SwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2e

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "screen_off_pocket"

    if-eqz v32, :cond_2c

    const/16 v33, 0x1

    :goto_1e
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f100198

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v33

    sput v33, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_KEEP_SCREEN_TURNED_OFF:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    sget v35, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_KEEP_SCREEN_TURNED_OFF:I

    if-eqz v32, :cond_2d

    const/16 v33, 0x3e8

    :goto_1f
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_2c
    const/16 v33, 0x0

    goto :goto_1e

    :cond_2d
    const/16 v33, 0x0

    goto :goto_1f

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_3

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    if-eqz v33, :cond_2f

    const/16 v30, 0x1

    :goto_20
    const/16 v33, 0x1

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->maketurnOffUniversalPopup(Landroid/preference/Preference;)V

    :goto_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v34, v0

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v34, v0

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    if-eqz v33, :cond_32

    const v33, 0x7f0b1bd9

    :goto_22
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v34, v0

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_3

    :cond_2f
    const/16 v30, 0x0

    goto :goto_20

    :cond_30
    const/16 v33, 0x1

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_31

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->makeTalkBackDisablePopup(Landroid/preference/Preference;)V

    goto :goto_21

    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "intelligent_sleep_mode"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_21

    :cond_32
    const v33, 0x7f0b04ae

    goto :goto_22

    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "brightness_pms_marker_screen"

    const/16 v35, 0x64

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "screen_brightness"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "brightness_pms_marker_screen"

    const/16 v35, 0x64

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "screen_brightness"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    :cond_35
    const/16 v33, 0x0

    goto/16 :goto_5

    :cond_36
    const/16 v33, 0x0

    goto/16 :goto_6

    :cond_37
    const/16 v33, 0x0

    goto/16 :goto_7

    :cond_38
    const/16 v33, 0x0

    goto/16 :goto_8

    :cond_39
    const/16 v33, 0x0

    goto/16 :goto_9

    :cond_3a
    const/16 v33, 0x1

    goto/16 :goto_a

    :cond_3b
    const/16 v33, 0x1

    goto/16 :goto_b

    :catch_2
    move-exception v14

    const-string/jumbo v33, "SecDisplaySettings"

    const-string/jumbo v34, "could not persist night mode setting"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    :cond_3c
    const/16 v33, 0x0

    goto/16 :goto_d

    :cond_3d
    const/16 v19, 0x0

    goto/16 :goto_e

    :cond_3e
    const-string/jumbo v33, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v34, 0x16

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_f

    :cond_3f
    const/16 v33, 0x0

    goto/16 :goto_10

    :cond_40
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockAOD:Z

    move/from16 v33, v0

    if-eqz v33, :cond_42

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "aod_night_mode"

    if-eqz v32, :cond_41

    const/16 v33, 0x1

    :goto_23
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_24
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    new-instance v33, Landroid/content/ComponentName;

    const-string/jumbo v34, "com.samsung.android.app.cocktailbarservice"

    const-string/jumbo v35, "com.samsung.android.app.edgeclock.nightclock.NightClockService"

    invoke-direct/range {v33 .. v35}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_11

    :catch_3
    move-exception v13

    const-string/jumbo v33, "SecDisplaySettings"

    const-string/jumbo v34, "start Night clock service is failed."

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_41
    const/16 v33, 0x0

    goto :goto_23

    :cond_42
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "night_mode"

    if-eqz v32, :cond_43

    const/16 v33, 0x1

    :goto_25
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_24

    :cond_43
    const/16 v33, 0x0

    goto :goto_25

    nop

    :sswitch_data_0
    .sparse-switch
        0x3a98 -> :sswitch_0
        0x7530 -> :sswitch_1
        0xea60 -> :sswitch_2
        0x1d4c0 -> :sswitch_3
        0x493e0 -> :sswitch_4
        0x927c0 -> :sswitch_5
    .end sparse-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAccessibilityVisionEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.ModePreviewTablet"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-super/range {p0 .. p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0801

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x0

    return v1

    :cond_2
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.NewModePreview"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    return v1

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAccessibilityVisionEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const/4 v1, 0x0

    return v1

    :cond_6
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const-class v2, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0b0673

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFontPreview:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.FontPreviewTablet"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.FontPreview"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeLighting:Landroid/preference/Preference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.service.peoplestripe"

    const-string/jumbo v2, "com.samsung.android.service.peoplestripe.settings.TurnOverLighting"

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v10

    invoke-virtual {v10}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v1, v9, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0609

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b048b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    invoke-static {v15, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x0

    return v1

    :cond_b
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.app.aodservice.settings.AODSettingsMain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100184

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_ALWAYS_ON_DISPLAY:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_ALWAYS_ON_DISPLAY:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    :catch_2
    move-exception v10

    const-string/jumbo v1, "SecDisplaySettings"

    const-string/jumbo v2, "ActivityNotFoundException in AlwaysOnDisplay"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :try_start_3
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockAOD:Z

    if-eqz v1, :cond_d

    const-string/jumbo v1, "com.samsung.android.app.aodservice.settings.NightClock"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100186

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_NIGHT_CLOCK:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_NIGHT_CLOCK:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_d
    :try_start_4
    const-string/jumbo v1, "com.samsung.android.app.edge.setting.NightClock"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v10

    const-string/jumbo v1, "SecDisplaySettings"

    const-string/jumbo v2, "ActivityNotFoundException in NightClock"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v14, 0x1

    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v1

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sem_perfomance_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v13, 0x1

    :goto_5
    if-eqz v13, :cond_11

    const/4 v1, 0x0

    return v1

    :cond_f
    const/4 v14, 0x0

    goto :goto_4

    :cond_10
    const/4 v13, 0x0

    goto :goto_5

    :cond_11
    if-nez v14, :cond_12

    :try_start_5
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.settings.SCREEN_RESOLUTION_ACTIVITY"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v10

    invoke-virtual {v10}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_12
    const/4 v1, 0x0

    return v1

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDisplayScaling:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_14

    const/4 v14, 0x1

    :goto_6
    if-nez v14, :cond_15

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.settings.DisplayScalingActivity"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_14
    const/4 v14, 0x0

    goto :goto_6

    :cond_15
    const/4 v1, 0x0

    return v1

    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mHomeScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "StartEdit"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "PackageName"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ClassName"

    const-string/jumbo v2, "com.android.settings.Settings$LaunchDisplaySettingsActivity"

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_HOME_SCREEN:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_HOME_SCREEN:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isGameModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_18
    const/4 v1, 0x0

    return v1

    :cond_19
    :try_start_6
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.Settings$EasyModeAppActivity"

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v10

    invoke-virtual {v10}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 31

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "screen_off_timeout"

    const-wide/16 v28, 0x7530

    invoke-static/range {v26 .. v29}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v26, v0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/TimeoutListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->disableUnusableTimeouts(Lcom/android/settings/TimeoutListPreference;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    const-string/jumbo v27, "device_policy"

    invoke-virtual/range {v26 .. v27}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    if-eqz v10, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLockForUserAndProfiles(I)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/settings/TimeoutListPreference;->removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateTimeoutPreferenceDescription(J)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateState()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotate:Landroid/preference/SwitchPreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotate:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_1f

    const/16 v26, 0x0

    :goto_0
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "screen_off_timeout"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "screen_mode_setting"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenModeObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v26, "com.android.settings.action.FONT_SIZE_CLOSE"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v26, "com.samsung.intent.action.MAX_BRIGHTNESS_CHANGED"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBrightnessMaxReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v11}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v26, "SecDisplaySettings"

    const-string/jumbo v27, "onResume() : registerReceiver Intent.ACTION_BATTERY_CHANGED"

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "access_control_enabled"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateAccessControlCheckbox()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "intelligent_sleep_mode"

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_20

    const/16 v23, 0x1

    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v26

    if-eqz v26, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    const/16 v23, 0x0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v23, :cond_21

    const v26, 0x7f0b1bd9

    :goto_2
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "intelligent_sleep_mode"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->registerBrightnessObserver()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->onBrightnessChanged()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->onBrightnessModeChanged()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->brightnessNotifyChange()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "screen_brightness_mode"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "display_outdoor_mode"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_22

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "display_outdoor_mode"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    if-eqz v15, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setEnabled(Z)V

    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeLighting:Landroid/preference/Preference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "turn_over_lighting"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeLighting:Landroid/preference/Preference;

    move-object/from16 v27, v0

    if-eqz v17, :cond_24

    const v26, 0x7f0b1bd9

    :goto_5
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSimpleLEDIndicator:Landroid/preference/SwitchPreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSimpleLEDIndicator:Landroid/preference/SwitchPreference;

    move-object/from16 v26, v0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getLedIndicator()Z

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/preference/SwitchPreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "screen_off_pocket"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_25

    const/16 v20, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/preference/SwitchPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_c

    sget-object v26, Lcom/samsung/android/settings/display/SecDisplaySettings;->sPowerManager:Landroid/os/PowerManager;

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v6

    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAODDisabledInPSM(Landroid/content/Context;)Z

    move-result v26

    if-nez v26, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_27

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v6, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    const v27, 0x7f0b048e

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "aod_mode"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockAOD:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "aod_night_mode"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_28

    const/16 v16, 0x1

    :goto_8
    if-eqz v16, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getNightclocksummary()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "aod_night_mode"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_d
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "blue_light_filter"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_2e

    const/4 v12, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setChecked(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateBlueLightFilterSummary()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateBlueLightFilterStatus()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "blue_light_filter"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "blue_light_filter_type"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilterOptionObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "greyscale_mode"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mGrayscaleObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "high_contrast"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNegativeColorObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "color_blind"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getCurrentResolution()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "display_size_forced"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolutionObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "low_power"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_2f

    const/4 v14, 0x1

    :goto_c
    if-nez v14, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v26

    if-eqz v26, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "sem_perfomance_mode"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_31

    :cond_f
    if-eqz v14, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const v28, 0x7f0b0be8

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b068f

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;)V

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    :cond_10
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/settings/widget/RelativeLinkView;->resetLinkData()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/widget/RelativeLinkView;->getRelativeLinkView()Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    :cond_11
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "sem_perfomance_mode"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v26

    if-eqz v26, :cond_12

    const/16 v26, 0x2

    move/from16 v0, v21

    move/from16 v1, v26

    if-eq v0, v1, :cond_13

    :cond_12
    const/16 v25, 0x1

    :cond_13
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v26

    if-eqz v26, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_14

    const/16 v25, 0x0

    :cond_14
    if-eqz v25, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData4:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v26

    if-nez v26, :cond_16

    const/4 v5, 0x0

    :cond_16
    if-eqz v5, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v26

    const-string/jumbo v27, "com.samsung.android.app.aodservice"

    invoke-static/range {v26 .. v27}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_32

    :cond_17
    :goto_f
    if-eqz v5, :cond_18

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v26

    const-string/jumbo v27, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v0, v7, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    const/4 v5, 0x0

    :cond_18
    sget-object v26, Lcom/samsung/android/settings/display/SecDisplaySettings;->sPowerManager:Landroid/os/PowerManager;

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "high_contrast"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_33

    const/4 v13, 0x1

    :goto_10
    if-eqz v5, :cond_35

    if-eqz v6, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAODDisabledInPSM(Landroid/content/Context;)Z

    move-result v26

    if-nez v26, :cond_1a

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_34

    :cond_1a
    const/4 v5, 0x0

    :cond_1b
    :goto_11
    if-eqz v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateStateForDesktopMenuItem()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->isGameModeEnabled(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const v28, 0x7f0b0c36

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b068f

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;)V

    :cond_1e
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    move-object/from16 v28, v0

    const-string/jumbo v29, "Display"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEmStateReqCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    move-object/from16 v30, v0

    invoke-virtual/range {v26 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;)V

    return-void

    :cond_1f
    const/16 v26, 0x1

    goto/16 :goto_0

    :cond_20
    const/16 v23, 0x0

    goto/16 :goto_1

    :cond_21
    const v26, 0x7f0b04ae

    goto/16 :goto_2

    :cond_22
    const/4 v15, 0x0

    goto/16 :goto_3

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_24
    const v26, 0x7f0b1bda

    goto/16 :goto_5

    :cond_25
    const/16 v20, 0x0

    goto/16 :goto_6

    :cond_26
    const v26, 0x7f0b048d

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const v28, 0x7f0b048b

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b048f

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_7

    :cond_28
    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v26, v0

    const v27, 0x7f0b04ac

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_9

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v28, "night_mode"

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_2b

    const v26, 0x7f0b1bd9

    :goto_13
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v28, "night_mode"

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_2c

    const/16 v26, 0x1

    :goto_14
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v28, "night_mode"

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_2d

    const/16 v26, 0x1

    :goto_15
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "night_mode"

    invoke-static/range {v27 .. v27}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockObserver:Landroid/database/ContentObserver;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_a

    :cond_2b
    const v26, 0x7f0b04ac

    goto :goto_13

    :cond_2c
    const/16 v26, 0x0

    goto :goto_14

    :cond_2d
    const/16 v26, 0x0

    goto :goto_15

    :cond_2e
    const/4 v12, 0x0

    goto/16 :goto_b

    :cond_2f
    const/4 v14, 0x0

    goto/16 :goto_c

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "sem_perfomance_mode"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    packed-switch v22, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const v28, 0x7f0b0c36

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b068f

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const v28, 0x7f0b0c34

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b068f

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const v28, 0x7f0b0c32

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b068f

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    goto/16 :goto_e

    :cond_32
    const/4 v5, 0x0

    goto/16 :goto_f

    :cond_33
    const/4 v13, 0x0

    goto/16 :goto_10

    :cond_34
    if-nez v13, :cond_1a

    :cond_35
    if-eqz v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_1b

    const/4 v5, 0x0

    goto/16 :goto_11

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const v28, 0x7f0b113c

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b068f

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    goto/16 :goto_12

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showScreenTimeDialog()V
    .locals 15

    const/4 v14, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string/jumbo v10, "device_policy"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v14}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v6

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-eqz v9, :cond_0

    cmp-long v9, v6, v2

    if-gez v9, :cond_0

    move-wide v2, v6

    :cond_0
    const-string/jumbo v9, "SecDisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "maxTimeout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "SecDisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "currentDeviceLockTimeout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v14, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    :cond_1
    const-string/jumbo v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v9, 0x7f040201

    invoke-virtual {v4, v9, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v9, 0x7f110636

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f0b06b8

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b1542

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v9, 0x104000a

    invoke-virtual {v0, v9, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    iget-object v9, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_2
    const-wide/16 v6, 0x0

    goto/16 :goto_0
.end method

.method public updateAccessControlCheckbox()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "access_control_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "easy_mode_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    const/4 v1, 0x1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
