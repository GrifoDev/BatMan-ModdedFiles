.class public Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "Usefulfeature.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$10;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$11;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$14;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$15;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$17;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$18;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$19;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$1;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$20;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$2;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$5;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$6;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$7;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$8;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$9;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$SummaryProvider;
    }
.end annotation


# static fields
.field private static final FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static SETTINGS_ADVANCEDFEATURE:I

.field private static SETTINGS_ADVANCEDFEATURE_QUICKLAUNCHCAMERA:I

.field private static SETTINGS_ADVANCEDFEATURE_SMARTCALL:I

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mHdrSummary:Ljava/lang/String;

.field private static mHongbaoAssistantEnabled:Z

.field private static mHongbaoEnabled:Z

.field public static final mMotionFeatures:[Ljava/lang/String;

.field private static mSupportMcc:[Ljava/lang/String;

.field private static sIsSupportNightClock:Z


# instance fields
.field edit:Landroid/content/SharedPreferences$Editor;

.field private mAccelerateHongbaoReceiving:Landroid/preference/Preference;

.field private mAccelerateHongbaoReceivingObserver:Landroid/database/ContentObserver;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mAppLock:Landroid/preference/PreferenceScreen;

.field private final mAppLockObserver:Landroid/database/ContentObserver;

.field private mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

.field private mCallMsgSpamfilterObserver:Landroid/database/ContentObserver;

.field private mCategoryFour:Landroid/preference/PreferenceCategory;

.field private mCategoryThree:Landroid/preference/PreferenceCategory;

.field private mCategoryTwo:Landroid/preference/PreferenceCategory;

.field private mDeviceAssistantApp:Landroid/preference/PreferenceScreen;

.field private mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mDock:Landroid/preference/Preference;

.field private mDualApp:Landroid/preference/PreferenceScreen;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFestivalEffect:Landroid/preference/PreferenceScreen;

.field private mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mFingerSensorGestureObserver:Landroid/database/ContentObserver;

.field private mGalaxyLabs:Landroid/preference/Preference;

.field private mGameHome:Landroid/preference/PreferenceScreen;

.field private mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

.field private mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mHongbaoAssistantObserver:Landroid/database/ContentObserver;

.field private mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

.field private mIdentifyUnsavedNumbersObserver:Landroid/database/ContentObserver;

.field private mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mInteractionControlObserver:Landroid/database/ContentObserver;

.field private mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mMultiWindowPref:Landroid/preference/PreferenceScreen;

.field private mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mOneHandedOperationObserver:Landroid/database/ContentObserver;

.field private mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mQuickCameraLaunch:Landroid/preference/SwitchPreference;

.field private mQuickCameraLaunchPower:Landroid/preference/SwitchPreference;

.field private mQuickCameraObserver:Landroid/database/ContentObserver;

.field private mQuickDial:Landroid/preference/SwitchPreference;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mSafetycareHelp:Landroid/preference/PreferenceScreen;

.field private mScreenRecorder:Landroid/preference/PreferenceScreen;

.field private mSendSOSMessage:Landroid/preference/Preference;

.field private mSendSOSMessageObserver:Landroid/database/ContentObserver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

.field private mSmartCaptureObserver:Landroid/database/ContentObserver;

.field private mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mSmartStayObserver:Landroid/database/ContentObserver;

.field private mSpen:Landroid/preference/Preference;

.field private mSwipeToCallObserver:Landroid/database/ContentObserver;

.field private mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTouchSensitivityObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceiving:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get12()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    return v0
.end method

.method static synthetic -get13()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoEnabled:Z

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get21(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get22(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get23(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get24(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get25(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get26(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get27(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get28(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDock:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -set0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportMCC()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportSmartCall(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGestureSupport(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSupportSpay(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSummaryForMutePauseSwitch()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->appLockSummaryUpdate()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->dismissAllDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "pick_up_to_call_out_switch"

    aput-object v3, v0, v2

    const-string/jumbo v3, "pick_up_switch"

    aput-object v3, v0, v1

    const-string/jumbo v3, "merged_mute_or_pause_switch"

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const-string/jumbo v3, "palm_swipe_switch"

    const/4 v4, 0x3

    aput-object v3, v0, v4

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMotionFeatures:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "hongbao"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_RIL_ConfigKeepRrcConnection"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoEnabled:Z

    const-string/jumbo v0, "hongbao_assistant"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_RIL_ConfigKeepRrcConnection"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    sput-boolean v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

    const-string/jumbo v1, "nightclock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->sIsSupportNightClock:Z

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$18;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$18;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$19;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$19;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$1;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$2;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mInteractionControlObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessageObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$5;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceivingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$6;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$7;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbersObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$8;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilterObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$9;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLockObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$10;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$11;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$11;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStayObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandedOperationObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$14;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$14;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTouchSensitivityObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$15;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$15;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGestureObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$17;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$17;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$20;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$20;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private appLockSummaryUpdate()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "app_lock_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b1bd3

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b1bd4

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method public static checkMccSmartCall(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSupportMcc:[Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSupportMcc:[Ljava/lang/String;

    array-length v3, v3

    if-nez v3, :cond_2

    :cond_1
    return v2

    :cond_2
    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSupportMcc:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v0, v3, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v1, 0x1

    :cond_4
    const-string/jumbo v2, "Usefulfeature"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkMccSmartCall : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static checkSmartSwitchSupport(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    const-string/jumbo v3, "device_policy"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "DeviceOwner"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Common_ConfigSmartSwitchFunction"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "setupwizard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "SS is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method private dismissAllDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public static getInsertedSimCard()I
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSimCardInserted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static getMultiSimIccType(I)Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, "0"

    :try_start_0
    const-string/jumbo v2, "ril.ICC_TYPE"

    const-string/jumbo v3, "0"

    invoke-static {p0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static getSimMcc()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSimMccMncReady()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getSimMcc(I)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSimMccMncReady(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static getSummaryForMutePauseSwitch()I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const/high16 v2, 0x200000

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0b0ac5

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b0ac7

    goto :goto_0

    :cond_1
    const v0, 0x7f0b0ac6

    goto :goto_0
.end method

.method private static isNotSupportSamsungMessageApp()Z
    .locals 2

    const-string/jumbo v0, "SBM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isReadyOneHandedOperationStatusEnable()Z
    .locals 15

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isGEDTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isSwitchAccessEnabled(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-string/jumbo v13, "com.sec.feature.overlaymagnifier"

    invoke-static {v12, v13}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "accessibility_magnifier"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    const/4 v4, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "accessibility_display_magnification_enabled"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "finger_magnifier"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v11

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "access_control_use"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "assistant_menu"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    const/4 v1, 0x1

    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "direct_access"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    const/4 v3, 0x1

    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "accessibility_autoclick_enabled"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    const/4 v2, 0x1

    :goto_7
    if-nez v8, :cond_1

    if-nez v9, :cond_1

    if-nez v10, :cond_1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    if-nez v11, :cond_1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    const/4 v7, 0x0

    :cond_2
    return v7

    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    goto :goto_7
.end method

.method public static isSimCardInserted(I)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMultiSimIccType(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isSimCardStatusOn(I)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x1

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSimCardInserted(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_4

    if-ne p0, v3, :cond_4

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "phone2_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_2

    if-nez p0, :cond_2

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "phone1_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimMccMncReady()Z
    .locals 2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static isSimMccMncReady(I)Z
    .locals 2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private static isSupportMCC()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Common_ConfigSvcProviderForUnknownNumber"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    if-le v4, v3, :cond_1

    sget-object v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportSmartCall(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static isSupportMccSmartCall()Z
    .locals 10

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSimMcc()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "persist.radio.multisim.config"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "dsds"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "tsts"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "dsda"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getInsertedSimCard()I

    move-result v7

    if-le v7, v6, :cond_2

    invoke-static {v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSimCardStatusOn(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v6}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSimCardStatusOn(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSimMcc(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSimMcc(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->checkMccSmartCall(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->checkMccSmartCall(Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v7, "Usefulfeature"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isSupportMccSmartCall mSim1Support : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mSim2Support : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    :goto_0
    return v3

    :cond_1
    move v3, v6

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->checkMccSmartCall(Ljava/lang/String;)Z

    move-result v6

    return v6
.end method

.method private static isSupportSmartCall(Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Common_ConfigSvcProviderForUnknownNumber"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v4, v1, v6

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "com.samsung.android.smartcallprovider"

    invoke-static {p0, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    array-length v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    const-string/jumbo v4, "off"

    aget-object v5, v0, v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "off"

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return v6

    :cond_1
    return v3
.end method

.method private static mFingerSensorGestureSupport(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    const-string/jumbo v2, "fingerprint"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintManager;->semHasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static mSupportSpay(Landroid/content/Context;)Z
    .locals 8

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.android.spay"

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "com.samsung.android.spay.quickgesture"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v5, "Usefulfeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Samsung Pay supports finger gesture : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v4

    :catch_0
    move-exception v3

    const-string/jumbo v5, "Usefulfeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to load meta-data, NullPointer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v5, "Usefulfeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to load meta-data, NameNotFound: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private makeOneHandOperationDisablePopup()V
    .locals 11

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b0d4b

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->dismissAllDialog()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "com.sec.feature.overlaymagnifier"

    invoke-static {v8, v9}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0b0297

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.app.talkback"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "\u200f "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0b02af

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.google.android.marvin.talkback"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "\u200f "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0b02ae

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0b0293

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.universalswitch"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0b02b0

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.app.accesscontrol"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0b0320

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.app.assistantmenu"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0b0254

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0b02ac

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b17f8

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b180c

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x1030132

    invoke-direct {v0, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v0, v8}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v8, 0x7f04001b

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v8, 0x7f110110

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f110111

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b0d4c

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$27;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$27;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const v10, 0x104000a

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$28;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$28;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const/high16 v10, 0x1040000

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$29;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$29;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private makeTalkBackDisablePopup(Landroid/preference/Preference;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->dismissAllDialog()V

    const-string/jumbo v1, ""

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0b0691

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f0b04b4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0b04b5

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$21;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$21;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/preference/Preference;)V

    const v6, 0x7f0b04b6

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$22;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$22;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$23;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$23;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/preference/Preference;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0b0aa9

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private maketurnOffUniversalPopup(Landroid/preference/Preference;)V
    .locals 9

    const v8, 0x7f0b02aa

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->dismissAllDialog()V

    const-string/jumbo v0, ""

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0b0691

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    const v3, 0x7f0b04b4

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b04b5

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$24;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$24;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/preference/Preference;)V

    const v5, 0x7f0b04b6

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$25;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$25;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$26;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$26;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/preference/Preference;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0b0aa9

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private quickCameraDisablePopup()V
    .locals 9

    const v8, 0x7f0b0287

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->dismissAllDialog()V

    const v3, 0x7f0b04b4

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b04b5

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f0b0484

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "double_tab_launch"

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b04b6

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$33;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$33;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$34;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$34;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$35;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$35;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private removeSafetyPreference(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private setOneHandOperation(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    if-ne p1, v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "any_screen_enabled"

    invoke-static {v2, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "one_handed_op_wakeup_type"

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    const v2, 0x7f0b0d46

    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f1001c8

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_4

    const/16 v2, 0x3e8

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const v2, 0x7f0b0d44

    goto :goto_2

    :cond_3
    const v2, 0x7f0b049d

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3
.end method

.method public static setSupportMccSmartCall()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_ConfigSvcProviderForUnknownNumber"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-le v2, v4, :cond_0

    aget-object v2, v0, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget-object v2, v0, v4

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSupportMcc:[Ljava/lang/String;

    goto :goto_0
.end method

.method private smartCaptureDisablePopup()V
    .locals 8

    const v7, 0x7f0b0297

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v2, 0x7f0b04b4

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b04b5

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f0b0482

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b04b6

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$30;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$30;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$31;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$31;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$32;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$32;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE:I

    sget v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.sec.android.easyMover"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->checkSmartSwitchSupport(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v6}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "com.sec.android.easyMover"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v4, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v7, 0x7f0b0cea

    iput v7, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :cond_0
    sget-object v6, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isEasyModeDisplayed(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v6}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.android.settings.Settings$EasyModeAppActivity"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v1, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v7, 0x7f0b06d7

    iput v7, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eqz v6, :cond_5

    :cond_2
    iput-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void

    :cond_4
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.sec.android.easyMover.LAUNCH_SMART_SWITCH"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v2, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v6, "Usefulfeature"

    const-string/jumbo v7, "not found activity"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v6

    if-eqz v6, :cond_6

    sget-boolean v6, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->sIsSupportNightClock:Z

    if-eqz v6, :cond_2

    :cond_6
    new-instance v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v6}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "-nightclock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string/jumbo v6, "com.samsung.android.app.aodservice.settings.NightClock"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v3, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v7, 0x7f0b048a

    iput v7, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    goto :goto_1

    :cond_7
    const-string/jumbo v6, "com.samsung.android.app.edge.setting.NightClock"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    const v3, 0x7f0b1bd4

    const v1, 0x7f0b1bd3

    const v2, 0x7f0b04ad

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v4, v7, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v4, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "surface_palm_swipe"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_6

    :goto_3
    invoke-virtual {v2, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17

    invoke-super/range {p0 .. p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    sput-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const v13, 0x7f08013c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setSupportMccSmartCall()V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportMCC()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string/jumbo v13, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v13, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v3, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v3, v15, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v6

    const-string/jumbo v13, "pen_settings_title"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSpen:Landroid/preference/Preference;

    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isPenAirViewSupported()Z

    move-result v13

    if-eqz v13, :cond_3a

    :cond_1
    :goto_0
    const-string/jumbo v13, "dock_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDock:Landroid/preference/Preference;

    const-string/jumbo v13, "smartscreen_stay"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v13

    if-eqz v13, :cond_2

    const-string/jumbo v13, "smartscreen_stay"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_3
    const-string/jumbo v13, "game_home"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_4
    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lcom/samsung/android/app/SemDualAppManager;->isSupported()Z

    move-result v13

    if-eqz v13, :cond_5

    const-string/jumbo v13, "dual_app"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDualApp:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDualApp:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDualApp:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_5
    const-string/jumbo v13, "display_airmessage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_6
    const-string/jumbo v13, "key_festival_effect"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/preference/PreferenceScreen;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_7
    const-string/jumbo v13, "identify_unsaved_numbers"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    const v14, 0x7f0b049b

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_9
    const-string/jumbo v13, "call_message_spam_filter"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_a
    const-string/jumbo v13, "category_two"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCategoryTwo:Landroid/preference/PreferenceCategory;

    const-string/jumbo v13, "onehand_operation_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_b
    const-string/jumbo v13, "category_three"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCategoryThree:Landroid/preference/PreferenceCategory;

    const-string/jumbo v13, "quick_camera_launch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_c
    const-string/jumbo v13, "quick_camera_launch_power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/preference/SwitchPreference;

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_d
    const-string/jumbo v13, "assist_and_voice_input"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDeviceAssistantApp:Landroid/preference/PreferenceScreen;

    const-string/jumbo v13, "pick_up_switch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_e
    const-string/jumbo v13, "pick_up_to_call_out_switch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_f
    const-string/jumbo v13, "screen_recorder"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_10
    const-string/jumbo v13, "smart_capture"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_11
    const-string/jumbo v13, "merged_mute_or_pause_switch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_12
    const-string/jumbo v13, "palm_swipe_switch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_13
    const-string/jumbo v13, "multi_window_setting"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/preference/PreferenceScreen;

    sget-boolean v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoEnabled:Z

    if-eqz v13, :cond_3b

    const-string/jumbo v13, "accelerate_hongbao_receiving"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceiving:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceiving:Landroid/preference/Preference;

    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceiving:Landroid/preference/Preference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_14
    :goto_1
    sget-boolean v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    if-eqz v13, :cond_3c

    const-string/jumbo v13, "hongbao_assistant"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_16

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_16
    :goto_2
    const-string/jumbo v13, "category_four"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCategoryFour:Landroid/preference/PreferenceCategory;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_3d

    const-string/jumbo v13, "galaxy_labs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_17
    :goto_3
    const-string/jumbo v13, "key_applock"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_18

    const-string/jumbo v13, "applock"

    invoke-static {v13}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3e

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    :goto_4
    if-nez v13, :cond_3f

    const-string/jumbo v13, "key_applock"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_18
    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isPanicModeSupported()Z

    move-result v13

    if-eqz v13, :cond_40

    const-string/jumbo v13, "key_safety_assistance"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :goto_6
    const-string/jumbo v13, "key_safety_assistance"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_19

    const-string/jumbo v13, "key_safety_assistance"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    if-eqz v13, :cond_1a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_1a
    const-string/jumbo v13, "safetycare_help"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSafetycareHelp:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSafetycareHelp:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_1b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSafetycareHelp:Landroid/preference/PreferenceScreen;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_1b
    const-string/jumbo v13, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c

    const-string/jumbo v13, "safetycare_help"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removeSafetyPreference(Ljava/lang/String;)V

    :cond_1c
    const-string/jumbo v13, "hdr_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    if-eqz v13, :cond_1d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1d
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v13

    const-string/jumbo v14, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "Galaxy Note7"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_41

    const v13, 0x7f0b04a9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHdrSummary:Ljava/lang/String;

    :goto_7
    const-string/jumbo v13, "direct_share"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_42

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v13

    if-eqz v13, :cond_42

    const-string/jumbo v13, "direct_share"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_1e
    :goto_8
    const-string/jumbo v13, "increse_touch_sensetivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    if-eqz v13, :cond_1f

    const-string/jumbo v13, "increse_touch_sensetivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_1f
    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->edit:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v13, "quick_dial"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/preference/SwitchPreference;

    if-eqz v13, :cond_20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_20
    const-string/jumbo v13, "swipe_to_call_or_send_messages"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_21

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_21
    const-string/jumbo v13, "finger_sensor_gesture"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_22

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_22
    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x112006a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_43

    const-string/jumbo v13, "quick_camera_launch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :goto_9
    invoke-static {}, Lcom/android/settings/Utils;->isPanicModeSupported()Z

    move-result v13

    if-eqz v13, :cond_23

    const-string/jumbo v13, "quick_camera_launch_power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_23
    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGestureSupport(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_24

    const-string/jumbo v13, "finger_sensor_gesture"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_25

    sget v13, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v14, 0x138e4

    if-ge v13, v14, :cond_26

    :cond_25
    const-string/jumbo v13, "swipe_to_call_or_send_messages"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "com.samsung.android.quickassist"

    invoke-static {v13, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_27

    const-string/jumbo v13, "quick_dial"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_27
    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v13

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "com.samsung.android.game.gametools"

    invoke-static {v13, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v13

    if-nez v13, :cond_28

    if-eqz v7, :cond_29

    :cond_28
    const-string/jumbo v13, "game_home"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_29
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v13

    if-nez v13, :cond_2a

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_44

    :cond_2a
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string/jumbo v14, "CscFeature_Common_EnableAirMessage"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_44

    :goto_a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_2b

    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "com.samsung.android.myeventcenter"

    invoke-static {v13, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2b

    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v13

    if-eqz v13, :cond_2c

    :cond_2b
    const-string/jumbo v13, "key_festival_effect"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_2c
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v13

    if-nez v13, :cond_2d

    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportSmartCall(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_2e

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-nez v13, :cond_2e

    :cond_2d
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string/jumbo v14, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "SMARTMANAGER"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2f

    :cond_2e
    const-string/jumbo v13, "identify_unsaved_numbers"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_30

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-eqz v13, :cond_31

    :cond_30
    const-string/jumbo v13, "identify_unsaved_numbers"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_31
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v13

    if-eqz v13, :cond_32

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string/jumbo v14, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "SMARTMANAGER"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_32

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-eqz v13, :cond_33

    :cond_32
    const-string/jumbo v13, "call_message_spam_filter"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_33
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v13

    if-nez v13, :cond_34

    if-eqz v6, :cond_35

    :cond_34
    const-string/jumbo v13, "category_two"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v13, "onehand_operation_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "double_tab_launch_component"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

    const-string/jumbo v13, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    sget-object v14, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_36

    const-string/jumbo v13, "quick_camera_launch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_36
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-static {v13}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v13

    if-eqz v13, :cond_37

    const-string/jumbo v13, "assist_and_voice_input"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "com.samsung.android.app.scrollcapture"

    invoke-static {v13, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_38

    const-string/jumbo v13, "smart_capture"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_38
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "com.sec.app.screenrecorder"

    invoke-static {v13, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_45

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v13

    if-eqz v13, :cond_45

    :goto_b
    sget-object v14, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMotionFeatures:[Ljava/lang/String;

    const/4 v13, 0x0

    array-length v15, v14

    :goto_c
    if-ge v13, v15, :cond_46

    aget-object v11, v14, v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v11}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_39

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_39
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    :cond_3a
    const-string/jumbo v13, "pen_settings_title"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3b
    const-string/jumbo v13, "accelerate_hongbao_receiving"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3c
    const-string/jumbo v13, "hongbao_assistant"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3d
    const-string/jumbo v13, "galaxy_labs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/preference/Preference;

    if-eqz v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/preference/Preference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_3e
    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_3f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/preference/PreferenceScreen;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_5

    :cond_40
    const-string/jumbo v13, "key_panic_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_41
    const v13, 0x7f0b04a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHdrSummary:Ljava/lang/String;

    goto/16 :goto_7

    :cond_42
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_8

    :cond_43
    const-string/jumbo v13, "quick_camera_launch_power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_44
    const-string/jumbo v13, "display_airmessage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_45
    const-string/jumbo v13, "screen_recorder"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_46
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string/jumbo v14, "CscFeature_Setting_ConfigMotionType"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_47

    const-string/jumbo v13, ","

    invoke-virtual {v1, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v10, v2

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v10, :cond_47

    aget-object v13, v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_47
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "com.samsung.android.app.galaxylabs"

    invoke-static {v13, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_48

    if-eqz v6, :cond_49

    :cond_48
    const-string/jumbo v13, "category_four"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v13, "galaxy_labs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_49
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v13

    if-nez v13, :cond_4a

    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_53

    :cond_4a
    const-string/jumbo v13, "galaxy_labs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v13, "category_two"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v13, "category_three"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v13, "category_four"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :goto_e
    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_4b

    const-string/jumbo v13, "dock_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_4b
    if-eqz v12, :cond_4c

    invoke-virtual {v12}, Lcom/samsung/android/app/SemDualAppManager;->isSupported()Z

    move-result v13

    if-eqz v13, :cond_4d

    :cond_4c
    if-nez v12, :cond_4e

    :cond_4d
    const-string/jumbo v13, "dual_app"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_4e
    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKey()Z

    move-result v13

    if-nez v13, :cond_54

    const-string/jumbo v13, "active_key_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_4f
    :goto_f
    const/4 v9, 0x0

    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v8

    if-eqz v8, :cond_50

    invoke-virtual {v8}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v9

    :cond_50
    and-int/lit8 v13, v9, 0x8

    if-eqz v13, :cond_51

    const-string/jumbo v13, "multi_window_setting"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_51
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v13

    instance-of v13, v13, Landroid/preference/PreferenceCategory;

    if-eqz v13, :cond_52

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_52
    new-instance v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_53
    const-string/jumbo v13, "pen_settings_title"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v13, "dock_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v13, "smartscreen_stay"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v13, "key_panic_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v13, "key_safety_assistance"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v13, "safetycare_help"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removeSafetyPreference(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_54
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeyGridViewConcept()Z

    move-result v13

    if-eqz v13, :cond_4f

    const-string/jumbo v13, "active_key_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    const v14, 0x7f0b03b6

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_f
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbersObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_10

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mInteractionControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_4
    sget-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoEnabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceiving:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceivingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_5
    sget-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStayObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandedOperationObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandedOperationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTouchSensitivityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGestureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "AdvancedFeatures"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_4

    goto/16 :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v8, 0x1

    :goto_0
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v9}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "double_tab_launch"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string/jumbo v10, "com.android.settings"

    const-string/jumbo v11, "UFQC"

    const/16 v12, 0x3e8

    invoke-static {v9, v10, v11, v12}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1001cb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    sput v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE_QUICKLAUNCHCAMERA:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE_QUICKLAUNCHCAMERA:I

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x3e8

    :goto_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10, v11, v9}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_0
    :goto_3
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v9}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/preference/SwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->edit:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v11, "quick_dial"

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-interface {v10, v11, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v9, "com.samsung.android.action.quickdial"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "status"

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f1001ee

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_48

    const/16 v9, 0x3e8

    :goto_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10, v11, v9}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_1
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v9}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "auto_adjust_touch"

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_49

    const/4 v9, 0x1

    :goto_5
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f1001ea

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4a

    const/16 v9, 0x3e8

    :goto_6
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10, v11, v9}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v9}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "swipe_to_call_message"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4b

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    const v10, 0x7f0b1bd3

    invoke-virtual {v9, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_3
    :goto_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f1001eb

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4f

    const/16 v9, 0x3e8

    :goto_8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10, v11, v9}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_4
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v9}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "fingerprint_gesture_quick"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string/jumbo v6, ""

    if-eqz v4, :cond_50

    const v9, 0x7f0b1bd3

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_9
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    const/4 v9, 0x1

    return v9

    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string/jumbo v10, "com.android.settings"

    const-string/jumbo v11, "UFQC"

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_9
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v9}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/preference/SwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "double_tab_launch"

    const/4 v11, 0x3

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "lcd_curtain"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x1

    if-le v7, v9, :cond_a

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->quickCameraDisablePopup()V

    :goto_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1001cb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    sput v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE_QUICKLAUNCHCAMERA:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE_QUICKLAUNCHCAMERA:I

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_c

    const/16 v9, 0x3e8

    :goto_b
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10, v11, v9}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string/jumbo v10, "com.android.settings"

    const-string/jumbo v11, "UFQC"

    const/16 v12, 0x3e8

    invoke-static {v9, v10, v11, v12}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "double_tab_launch"

    add-int/lit8 v11, v7, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_a

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string/jumbo v10, "com.android.settings"

    const-string/jumbo v11, "UFQC"

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "double_tab_launch"

    add-int/lit8 v11, v7, -0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_a

    :cond_c
    const/4 v9, 0x0

    goto :goto_b

    :cond_d
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v9}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_e

    const v9, 0x7f0b1bd3

    :goto_c
    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f1001e2

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_10

    const/16 v9, 0x3e8

    :goto_d
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10, v11, v9}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :goto_e
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "motion_pick_up"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_e
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v9

    if-eqz v9, :cond_f

    const v9, 0x7f0b0ac3

    goto :goto_c

    :cond_f
    const v9, 0x7f0b0ac2

    goto :goto_c

    :cond_10
    const/4 v9, 0x0

    goto :goto_d

    :cond_11
    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_12

    const v9, 0x7f0b1bd3

    :goto_f
    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_e

    :cond_12
    const v9, 0x7f0b1bd4

    goto :goto_f

    :cond_13
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v9}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_17

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_14

    const v9, 0x7f0b1bd3

    :goto_10
    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f1001e1

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_16

    const/16 v9, 0x3e8

    :goto_11
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10, v11, v9}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :goto_12
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "motion_pick_up_to_call_out"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_14
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v9

    if-eqz v9, :cond_15

    const v9, 0x7f0b0ac1

    goto :goto_10

    :cond_15
    const v9, 0x7f0b0ac0

    goto :goto_10

    :cond_16
    const/4 v9, 0x0

    goto :goto_11

    :cond_17
    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_18

    const v9, 0x7f0b1bd3

    :goto_13
    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_12

    :cond_18
    const v9, 0x7f0b1bd4

    goto :goto_13

    :cond_19
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v9}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_1d

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1b

    const v9, 0x7f0b1bd3

    :goto_14
    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f1001e3

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1c

    const/16 v9, 0x3e8

    :goto_15
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10, v11, v9}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :goto_16
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "motion_merged_mute_pause"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v9

    if-nez v9, :cond_1a

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "motion_overturn"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1a
    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const/high16 v10, 0x200000

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "surface_palm_touch"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_1b
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSummaryForMutePauseSwitch()I

    move-result v9

    goto :goto_14

    :cond_1c
    const/4 v9, 0x0

    goto :goto_15

    :cond_1d
    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1e

    const v9, 0x7f0b1bd3

    :goto_17
    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_16

    :cond_1e
    const v9, 0x7f0b1bd4

    goto :goto_17

    :cond_1f
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v9}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    const/4 v9, 0x1

    if-ne v8, v9, :cond_20

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_20

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_20

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->maketurnOffUniversalPopup(Landroid/preference/Preference;)V

    goto/16 :goto_3

    :cond_20
    const/4 v9, 0x1

    if-ne v8, v9, :cond_21

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_21

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->makeTalkBackDisablePopup(Landroid/preference/Preference;)V

    goto/16 :goto_3

    :cond_21
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "surface_palm_swipe"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_24

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_22

    const v9, 0x7f0b1bd3

    :goto_18
    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f1001e0

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_23

    const/16 v9, 0x3e8

    :goto_19
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10, v11, v9}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_22
    const v9, 0x7f0b04ad

    goto :goto_18

    :cond_23
    const/4 v9, 0x0

    goto :goto_19

    :cond_24
    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_25

    const v9, 0x7f0b1bd3

    :goto_1a
    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_3

    :cond_25
    const v9, 0x7f0b1bd4

    goto :goto_1a

    :cond_26
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v9}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2c

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "finger_magnifier"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_27

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_27

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->smartCaptureDisablePopup()V

    goto/16 :goto_3

    :cond_27
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "enable_smart_capture"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_2a

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_28

    const v9, 0x7f0b1bd3

    :goto_1b
    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f1001df

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_29

    const/16 v9, 0x3e8

    :goto_1c
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10, v11, v9}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_28
    const v9, 0x7f0b0492

    goto :goto_1b

    :cond_29
    const/4 v9, 0x0

    goto :goto_1c

    :cond_2a
    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2b

    const v9, 0x7f0b1bd3

    :goto_1d
    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_3

    :cond_2b
    const v9, 0x7f0b1bd4

    goto :goto_1d

    :cond_2c
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v9}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2f

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2d

    const v9, 0x7f0b1bd3

    :goto_1e
    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "direct_share"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f1001e4

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2e

    const/16 v9, 0x3e8

    :goto_1f
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10, v11, v9}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_2d
    const v9, 0x7f0b049f

    goto :goto_1e

    :cond_2e
    const/4 v9, 0x0

    goto :goto_1f

    :cond_2f
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v9}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_34

    const/4 v9, 0x1

    if-ne v8, v9, :cond_30

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_30

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_30

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->maketurnOffUniversalPopup(Landroid/preference/Preference;)V

    goto/16 :goto_3

    :cond_30
    const/4 v9, 0x1

    if-ne v8, v9, :cond_31

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_31

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->makeTalkBackDisablePopup(Landroid/preference/Preference;)V

    goto/16 :goto_3

    :cond_31
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "intelligent_sleep_mode"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_32

    const v9, 0x7f0b1bd3

    :goto_20
    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f1001dd

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_33

    const/16 v9, 0x3e8

    :goto_21
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10, v11, v9}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_32
    const v9, 0x7f0b04ae

    goto :goto_20

    :cond_33
    const/4 v9, 0x0

    goto :goto_21

    :cond_34
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v9}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3a

    const/4 v9, 0x1

    if-ne v8, v9, :cond_39

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v9

    const-string/jumbo v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_35

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v9, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_35

    const/4 v0, 0x0

    :cond_35
    if-nez v0, :cond_37

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "any_screen_enabled"

    const/4 v12, 0x0

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_36

    const/4 v9, 0x1

    :goto_22
    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0d4d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    const/4 v9, 0x0

    return v9

    :cond_36
    const/4 v9, 0x0

    goto :goto_22

    :cond_37
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isReadyOneHandedOperationStatusEnable()Z

    move-result v9

    if-nez v9, :cond_38

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->makeOneHandOperationDisablePopup()V

    goto/16 :goto_3

    :cond_38
    invoke-direct {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setOneHandOperation(I)V

    goto/16 :goto_3

    :cond_39
    invoke-direct {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setOneHandOperation(I)V

    goto/16 :goto_3

    :cond_3a
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v9}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3d

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_3c

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_3b

    const v9, 0x7f0b1bd3

    :goto_23
    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :goto_24
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "airmessage_on"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_3b
    const v9, 0x7f0b047d

    goto :goto_23

    :cond_3c
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_24

    :cond_3d
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {p1, v9}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_40

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "hdr_effect"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_3e

    const v9, 0x7f0b1bd3

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_25
    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f1001e9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_3f

    const/16 v9, 0x3e8

    :goto_26
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10, v11, v9}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_3e
    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHdrSummary:Ljava/lang/String;

    goto :goto_25

    :cond_3f
    const/4 v9, 0x0

    goto :goto_26

    :cond_40
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v9}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "red_packet_do_not_show"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_41

    const/4 v5, 0x1

    :goto_27
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "hongbao_assistant"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_42

    const/4 v2, 0x1

    :goto_28
    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string/jumbo v9, "Usefulfeature"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onPreferenceChange  showDialog:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " isChecked:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " enabled:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v4, :cond_47

    if-eqz v4, :cond_43

    if-eqz v5, :cond_43

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v9, "com.sec.systemui.HONGBAO_ASSISTANT_ON_ACTION"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v9, 0x0

    return v9

    :cond_41
    const/4 v5, 0x0

    goto :goto_27

    :cond_42
    const/4 v2, 0x0

    goto :goto_28

    :cond_43
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "hongbao_assistant"

    if-eqz v4, :cond_44

    const/4 v9, 0x1

    :goto_29
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "red_packet_mode"

    if-eqz v4, :cond_45

    const/4 v9, 0x1

    :goto_2a
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v9, "com.samsung.hongbaoassistant"

    const-string/jumbo v10, "com.samsung.hongbaoassistant.HongbaoNotificationService"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v4, :cond_46

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_3

    :cond_44
    const/4 v9, 0x0

    goto :goto_29

    :cond_45
    const/4 v9, 0x0

    goto :goto_2a

    :cond_46
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_3

    :cond_47
    const-string/jumbo v9, "Usefulfeature"

    const-string/jumbo v10, "Changed form Quick Button."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_48
    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_49
    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_4a
    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_4b
    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v9

    if-nez v9, :cond_4c

    const v9, 0x7f0b04b8

    :goto_2b
    invoke-virtual {v10, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_7

    :cond_4c
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v9

    if-eqz v9, :cond_4d

    const v9, 0x7f0b04b9

    goto :goto_2b

    :cond_4d
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v9

    if-eqz v9, :cond_4e

    const v9, 0x7f0b04ba

    goto :goto_2b

    :cond_4e
    const v9, 0x7f0b04b8

    goto :goto_2b

    :cond_4f
    const/4 v9, 0x0

    goto/16 :goto_8

    :cond_50
    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSupportSpay(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_51

    const v9, 0x7f0b04be

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_9

    :cond_51
    const v9, 0x7f0b04bf

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_9
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.samsung.android.game.gamehome.action.SETTING"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in GameHome"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDualApp:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.da.daagent"

    const-string/jumbo v4, "com.samsung.android.da.daagent.activity.DualAppActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in DualApp"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.bst.airmessage"

    const-string/jumbo v5, "com.bst.airmessage.settings.AirMessageSettings"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v2, 0x1

    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    :cond_3
    const/4 v2, 0x0

    :cond_4
    const-string/jumbo v3, "S View cover attached"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in mDisplayAirmessage"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :try_start_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.samsung.android.myeventcenter.MY_EVENT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in mFestivalEffect"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :try_start_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.smartcall.SmartCallSettings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1001c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE_SMARTCALL:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE_SMARTCALL:I

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in IdentifyUnsavedNumbers"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :try_start_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.app.firewall"

    const-string/jumbo v4, "com.sec.android.app.firewall.spamfilter.SpamFilterSettings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in CalMsgSpamFiter"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :try_start_6
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.app.screenrecorder.START_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in ScreenRecorder"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1002eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :try_start_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.app.safetyassurance"

    const-string/jumbo v4, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in SendSOSMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_8
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.app.galaxylabs"

    const-string/jumbo v4, "com.samsung.android.app.galaxylabs.GalaxyLabsMainActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in GalaxyLabs"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->inEnabledAppearance()Z

    move-result v0

    if-nez v0, :cond_0

    return v4

    :cond_0
    const-string/jumbo v2, "com.samsung.android.settings.usefulfeature.HDReffectSettings"

    const v3, 0x7f0b04a6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 36

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const-string/jumbo v32, "false"

    const/16 v33, 0x0

    aput-object v32, v28, v33

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v32

    const-string/jumbo v33, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v34, "isScreenCaptureEnabled"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v15, v0, :cond_0

    const/16 v32, 0x1

    move/from16 v0, v32

    if-eq v15, v0, :cond_0

    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "access_control_enabled"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    const/16 v32, 0x1

    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_1

    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    if-eqz v32, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v32

    if-nez v32, :cond_2

    sget-object v32, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "spam_call_enable"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_2c

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    move-object/from16 v33, v0

    if-eqz v17, :cond_2d

    const v32, 0x7f0b1bd3

    :goto_2
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "spam_call_enable"

    invoke-static/range {v33 .. v33}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbersObserver:Landroid/database/ContentObserver;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v35

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v32 .. v34}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    if-eqz v32, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v33, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v34, "current_sec_theme_package_festival_enabled"

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_2e

    const v32, 0x7f0b1bd3

    :goto_3
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    if-eqz v32, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    move-object/from16 v33, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v34, "spam_filter_enable"

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_2f

    const v32, 0x7f0b1bd3

    :goto_4
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "spam_filter_enable"

    invoke-static/range {v33 .. v33}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilterObserver:Landroid/database/ContentObserver;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v35

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v32

    if-nez v32, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    move-object/from16 v33, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v34, "double_tab_launch"

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_30

    const/16 v32, 0x1

    :goto_5
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/preference/SwitchPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v32

    if-nez v32, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "double_tab_launch"

    const/16 v34, 0x3

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    rem-int/lit8 v32, v5, 0x2

    if-eqz v32, :cond_32

    const/4 v4, 0x1

    :goto_7
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v32

    if-eqz v32, :cond_7

    sget-object v32, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/preference/SwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const/4 v4, 0x0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/preference/SwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "double_tab_launch"

    invoke-static/range {v33 .. v33}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraObserver:Landroid/database/ContentObserver;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v35

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_8
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v32

    if-eqz v32, :cond_36

    sget-object v32, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v32

    if-eqz v32, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v32

    if-eqz v32, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0b0ac3

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_9
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_a

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v32

    if-eqz v32, :cond_41

    sget-object v32, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v32

    if-eqz v32, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v32

    if-eqz v32, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0b0ac1

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_a
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v32

    if-eqz v32, :cond_4b

    sget-object v32, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v32

    if-eqz v32, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSummaryForMutePauseSwitch()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_b
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_c

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    if-eqz v32, :cond_53

    const-string/jumbo v32, "Usefulfeature"

    const-string/jumbo v33, "MDM: Screen Capture Disabled"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v32

    if-eqz v32, :cond_52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0b04ad

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "surface_palm_swipe"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "surface_palm_swipe"

    invoke-static/range {v33 .. v33}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v35

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "enable_smart_capture"

    const/16 v34, 0x1

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_5a

    const/16 v23, 0x1

    :goto_e
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v32

    if-eqz v32, :cond_5b

    sget-object v32, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0b0492

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "enable_smart_capture"

    invoke-static/range {v33 .. v33}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v35

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    if-nez v32, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_5d

    :cond_e
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "access_control_enabled"

    invoke-static/range {v33 .. v33}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mInteractionControlObserver:Landroid/database/ContentObserver;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v35

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_10

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v32

    const-string/jumbo v33, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v0, v10, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v32

    if-eqz v32, :cond_5e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0b04ad

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_10
    :goto_11
    sget-boolean v32, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoEnabled:Z

    if-eqz v32, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceiving:Landroid/preference/Preference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceiving:Landroid/preference/Preference;

    move-object/from16 v33, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v34, "red_packet_mode"

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_5f

    const v32, 0x7f0b1bd3

    :goto_12
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "red_packet_mode"

    invoke-static/range {v33 .. v33}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceivingObserver:Landroid/database/ContentObserver;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v35

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_11
    sget-boolean v32, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    if-eqz v32, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "hongbao_assistant"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_60

    const/4 v14, 0x1

    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v33, v0

    if-eqz v14, :cond_61

    const v32, 0x7f0b1bd3

    :goto_14
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "hongbao_assistant"

    invoke-static/range {v33 .. v33}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantObserver:Landroid/database/ContentObserver;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v35

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    if-eqz v32, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->appLockSummaryUpdate()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "app_lock_enabled"

    invoke-static/range {v33 .. v33}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLockObserver:Landroid/database/ContentObserver;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v35

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "send_emergency_message"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_62

    const/16 v22, 0x1

    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    move-object/from16 v33, v0

    if-eqz v22, :cond_63

    const v32, 0x7f0b1bd3

    :goto_16
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "send_emergency_message"

    invoke-static/range {v33 .. v33}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessageObserver:Landroid/database/ContentObserver;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v35

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "direct_share"

    const/16 v34, 0x1

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_64

    const/4 v11, 0x1

    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v33, v0

    if-eqz v11, :cond_65

    const v32, 0x7f0b1bd3

    :goto_18
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "intelligent_sleep_mode"

    const/16 v34, 0x1

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_66

    const/16 v29, 0x1

    :goto_19
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v32

    if-eqz v32, :cond_16

    sget-object v32, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    const/16 v29, 0x0

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v33, v0

    if-eqz v29, :cond_67

    const v32, 0x7f0b1bd3

    :goto_1a
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "intelligent_sleep_mode"

    invoke-static/range {v33 .. v33}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStayObserver:Landroid/database/ContentObserver;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v35

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "any_screen_enabled"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_68

    const/4 v7, 0x1

    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "one_handed_op_wakeup_type"

    const/16 v34, 0x1

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_69

    const/4 v8, 0x1

    :goto_1c
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v32

    if-eqz v32, :cond_6a

    sget-object v32, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_6a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    const/4 v7, 0x0

    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v33, v0

    if-eqz v7, :cond_6c

    if-eqz v8, :cond_6b

    const v32, 0x7f0b0d46

    :goto_1e
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "any_screen_enabled"

    invoke-static/range {v33 .. v33}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandedOperationObserver:Landroid/database/ContentObserver;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v35

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "airmessage_on"

    const/16 v34, 0x1

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_6d

    const/4 v6, 0x1

    :goto_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v33, v0

    if-eqz v6, :cond_6e

    const v32, 0x7f0b1bd3

    :goto_20
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "hdr_effect"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_6f

    const/4 v13, 0x1

    :goto_21
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "sem_perfomance_mode"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v32

    if-eqz v32, :cond_70

    sget-object v32, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setEnabled(Z)V

    const/4 v13, 0x0

    :goto_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v33, v0

    if-eqz v13, :cond_73

    const v32, 0x7f0b1bd3

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v32

    :goto_23
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    move-object/from16 v33, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v34, "auto_adjust_touch"

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_74

    const/16 v32, 0x1

    :goto_24
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "auto_adjust_touch"

    invoke-static/range {v33 .. v33}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTouchSensitivityObserver:Landroid/database/ContentObserver;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v35

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/preference/SwitchPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string/jumbo v33, "quick_dial"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/preference/SwitchPreference;

    move-object/from16 v32, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "swipe_to_call_message"

    const/16 v34, 0x1

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_75

    const/16 v31, 0x1

    :goto_25
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v32

    if-eqz v32, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v31, :cond_76

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0b1bd3

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_1d
    :goto_26
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "swipe_to_call_message"

    invoke-static/range {v33 .. v33}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallObserver:Landroid/database/ContentObserver;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v35

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "fingerprint_gesture_quick"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_7a

    const/4 v12, 0x1

    :goto_27
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v32

    if-eqz v32, :cond_1f

    sget-object v32, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    const/4 v12, 0x0

    :cond_1f
    const-string/jumbo v30, ""

    if-eqz v12, :cond_7b

    const v32, 0x7f0b1bd3

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v30

    :goto_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "fingerprint_gesture_quick"

    invoke-static/range {v33 .. v33}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGestureObserver:Landroid/database/ContentObserver;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v35

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    if-eqz v32, :cond_21

    invoke-static {}, Landroid/app/ActivityManager;->supportsMultiWindow()Z

    move-result v32

    if-nez v32, :cond_7d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_21
    :goto_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSafetycareHelp:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    if-eqz v32, :cond_22

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v32

    if-eqz v32, :cond_22

    sget-object v32, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSafetycareHelp:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_28

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v32, v0

    if-eqz v32, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/settings/widget/RelativeLinkView;->resetLinkData()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getListView()Landroid/widget/ListView;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/settings/widget/RelativeLinkView;->getRelativeLinkView()Landroid/view/View;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v32, v0

    if-eqz v32, :cond_24

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v32

    if-eqz v32, :cond_7f

    sget-object v32, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_7f

    :cond_24
    :goto_2a
    sget-object v32, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "sem_perfomance_mode"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v32, v0

    if-eqz v32, :cond_26

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v32

    if-eqz v32, :cond_25

    const/16 v32, 0x1

    move/from16 v0, v25

    move/from16 v1, v32

    if-eq v0, v1, :cond_26

    :cond_25
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v32

    if-eqz v32, :cond_80

    sget-object v32, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_80

    :cond_26
    :goto_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v32, v0

    if-eqz v32, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    const/16 v27, 0x1

    :cond_27
    if-eqz v27, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getListView()Landroid/widget/ListView;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    move-object/from16 v34, v0

    const-string/jumbo v35, "AdvancedFeatures"

    invoke-virtual/range {v32 .. v35}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_29
    sget-object v32, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v32

    if-nez v32, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportMCC()Z

    move-result v32

    if-eqz v32, :cond_2a

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportMccSmartCall()Z

    move-result v32

    if-eqz v32, :cond_2b

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_2c
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_2d
    const v32, 0x7f0b1bd4

    goto/16 :goto_2

    :cond_2e
    const v32, 0x7f0b1bd4

    goto/16 :goto_3

    :cond_2f
    const v32, 0x7f0b1bd4

    goto/16 :goto_4

    :cond_30
    const/16 v32, 0x0

    goto/16 :goto_5

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_6

    :cond_32
    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/preference/SwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/preference/SwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_8

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0b0ac2

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_9

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0b1bd4

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_9

    :cond_36
    const/16 v32, 0x1

    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v32

    if-eqz v32, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v32

    if-eqz v32, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0b0ac3

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_9

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0b0ac2

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_9

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0b1bd4

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_9

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "motion_pick_up"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_3a

    const/16 v20, 0x1

    :goto_2c
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v32

    if-eqz v32, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v33, v0

    if-eqz v20, :cond_3b

    const v32, 0x7f0b1bd3

    :goto_2d
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_9

    :cond_3a
    const/16 v20, 0x0

    goto :goto_2c

    :cond_3b
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v32

    if-eqz v32, :cond_3c

    const v32, 0x7f0b0ac3

    goto :goto_2d

    :cond_3c
    const v32, 0x7f0b0ac2

    goto :goto_2d

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v33, v0

    if-eqz v20, :cond_3e

    const v32, 0x7f0b1bd3

    :goto_2e
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_9

    :cond_3e
    const v32, 0x7f0b1bd4

    goto :goto_2e

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0b0ac0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_a

    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0b1bd4

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_a

    :cond_41
    const/16 v32, 0x1

    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v32

    if-eqz v32, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v32

    if-eqz v32, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0b0ac1

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_a

    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0b0ac0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_a

    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0b1bd4

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_a

    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "motion_pick_up_to_call_out"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_45

    const/16 v21, 0x1

    :goto_2f
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v32

    if-eqz v32, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v33, v0

    if-eqz v21, :cond_46

    const v32, 0x7f0b1bd3

    :goto_30
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_a

    :cond_45
    const/16 v21, 0x0

    goto :goto_2f

    :cond_46
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v32

    if-eqz v32, :cond_47

    const v32, 0x7f0b0ac1

    goto :goto_30

    :cond_47
    const v32, 0x7f0b0ac0

    goto :goto_30

    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v33, v0

    if-eqz v21, :cond_49

    const v32, 0x7f0b1bd3

    :goto_31
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_a

    :cond_49
    const v32, 0x7f0b1bd4

    goto :goto_31

    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0b1bd4

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_b

    :cond_4b
    const/16 v32, 0x1

    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v32

    if-eqz v32, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSummaryForMutePauseSwitch()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_b

    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0b1bd4

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_b

    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "motion_merged_mute_pause"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_4e

    const/16 v18, 0x1

    :goto_32
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v32

    if-eqz v32, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v33, v0

    if-eqz v18, :cond_4f

    const v32, 0x7f0b1bd3

    :goto_33
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_b

    :cond_4e
    const/16 v18, 0x0

    goto :goto_32

    :cond_4f
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSummaryForMutePauseSwitch()I

    move-result v32

    goto :goto_33

    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v33, v0

    if-eqz v18, :cond_51

    const v32, 0x7f0b1bd3

    :goto_34
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_b

    :cond_51
    const v32, 0x7f0b1bd4

    goto :goto_34

    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0b1bd4

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_c

    :cond_53
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v32

    if-eqz v32, :cond_55

    sget-object v32, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v32

    if-eqz v32, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0b04ad

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_d

    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0b1bd4

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_d

    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "surface_palm_swipe"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_56

    const/16 v19, 0x1

    :goto_35
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v32

    if-eqz v32, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v33, v0

    if-eqz v19, :cond_57

    const v32, 0x7f0b1bd3

    :goto_36
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_d

    :cond_56
    const/16 v19, 0x0

    goto :goto_35

    :cond_57
    const v32, 0x7f0b04ad

    goto :goto_36

    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v33, v0

    if-eqz v19, :cond_59

    const v32, 0x7f0b1bd3

    :goto_37
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_d

    :cond_59
    const v32, 0x7f0b1bd4

    goto :goto_37

    :cond_5a
    const/16 v23, 0x0

    goto/16 :goto_e

    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v33, v0

    if-eqz v23, :cond_5c

    const v32, 0x7f0b1bd3

    :goto_38
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_f

    :cond_5c
    const v32, 0x7f0b0492

    goto :goto_38

    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    if-nez v32, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    if-nez v32, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    if-eqz v32, :cond_f

    goto/16 :goto_10

    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const v33, 0x7f0b1bd4

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_11

    :cond_5f
    const v32, 0x7f0b1bd4

    goto/16 :goto_12

    :cond_60
    const/4 v14, 0x0

    goto/16 :goto_13

    :cond_61
    const v32, 0x7f0b1bd4

    goto/16 :goto_14

    :cond_62
    const/16 v22, 0x0

    goto/16 :goto_15

    :cond_63
    const v32, 0x7f0b1bd4

    goto/16 :goto_16

    :cond_64
    const/4 v11, 0x0

    goto/16 :goto_17

    :cond_65
    const v32, 0x7f0b049f

    goto/16 :goto_18

    :cond_66
    const/16 v29, 0x0

    goto/16 :goto_19

    :cond_67
    const v32, 0x7f0b04ae

    goto/16 :goto_1a

    :cond_68
    const/4 v7, 0x0

    goto/16 :goto_1b

    :cond_69
    const/4 v8, 0x0

    goto/16 :goto_1c

    :cond_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_1d

    :cond_6b
    const v32, 0x7f0b0d44

    goto/16 :goto_1e

    :cond_6c
    const v32, 0x7f0b049d

    goto/16 :goto_1e

    :cond_6d
    const/4 v6, 0x0

    goto/16 :goto_1f

    :cond_6e
    const v32, 0x7f0b047d

    goto/16 :goto_20

    :cond_6f
    const/4 v13, 0x0

    goto/16 :goto_21

    :cond_70
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v32

    if-eqz v32, :cond_72

    const/16 v32, 0x2

    move/from16 v0, v25

    move/from16 v1, v32

    if-ne v0, v1, :cond_72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setEnabledAppearance(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v33, "pbm_video_enhancer"

    const/16 v34, 0x1

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_71

    const/4 v9, 0x1

    :goto_39
    move v13, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const v34, 0x7f0b0c2e

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    aput-object v34, v33, v35

    const v34, 0x7f0b04af

    move-object/from16 v0, p0

    move/from16 v1, v34

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setToastMsg(Ljava/lang/String;)V

    goto/16 :goto_22

    :cond_71
    const/4 v9, 0x0

    goto :goto_39

    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setEnabledAppearance(Z)V

    goto/16 :goto_22

    :cond_73
    sget-object v32, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHdrSummary:Ljava/lang/String;

    goto/16 :goto_23

    :cond_74
    const/16 v32, 0x0

    goto/16 :goto_24

    :cond_75
    const/16 v31, 0x0

    goto/16 :goto_25

    :cond_76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v33, v0

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v32

    if-nez v32, :cond_77

    const v32, 0x7f0b04b8

    :goto_3a
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_26

    :cond_77
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v32

    if-eqz v32, :cond_78

    const v32, 0x7f0b04b9

    goto :goto_3a

    :cond_78
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v32

    if-eqz v32, :cond_79

    const v32, 0x7f0b04ba

    goto :goto_3a

    :cond_79
    const v32, 0x7f0b04b8

    goto :goto_3a

    :cond_7a
    const/4 v12, 0x0

    goto/16 :goto_27

    :cond_7b
    sget-object v32, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSupportSpay(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_7c

    const v32, 0x7f0b04be

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_28

    :cond_7c
    const v32, 0x7f0b04bf

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_28

    :cond_7d
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v32

    if-eqz v32, :cond_7e

    sget-object v32, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_7e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_29

    :cond_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/preference/PreferenceScreen;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_29

    :cond_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    const/16 v27, 0x1

    goto/16 :goto_2a

    :cond_80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    const/16 v27, 0x1

    goto/16 :goto_2b
.end method
