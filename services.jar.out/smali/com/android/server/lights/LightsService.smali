.class public Lcom/android/server/lights/LightsService;
.super Lcom/android/server/SystemService;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/LightsService$1;,
        Lcom/android/server/lights/LightsService$2;,
        Lcom/android/server/lights/LightsService$3;,
        Lcom/android/server/lights/LightsService$4;,
        Lcom/android/server/lights/LightsService$5;,
        Lcom/android/server/lights/LightsService$AlarmReceiver;,
        Lcom/android/server/lights/LightsService$LightImpl;,
        Lcom/android/server/lights/LightsService$SmartGlowImpl;,
        Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;,
        Lcom/android/server/lights/LightsService$SvcLEDHandler;,
        Lcom/android/server/lights/LightsService$SvcLEDReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_SMARTGLOW:Ljava/lang/String; = "com.android.server.LightsService.action.UPDATE_SMARTGLOW_STATE"

.field private static final ACTION_UPDATE_SVC_LED:Ljava/lang/String; = "com.android.server.LightsService.action.UPDATE_SVC_LED"

.field static final DEBUG:Z = false

.field public static final LIGHT_SEC_FLASH:I = 0xa

.field public static final LIGHT_SEC_FLASH_CHARGING:I = 0xa

.field public static final LIGHT_SEC_FLASH_CHARGING_ERROR:I = 0xb

.field public static final LIGHT_SEC_FLASH_FULLY_CHARGED:I = 0xe

.field public static final LIGHT_SEC_FLASH_LOW_BATTERY:I = 0xd

.field public static final LIGHT_SEC_FLASH_MISSED_NOTIFICATION:I = 0xc

.field private static final MSG_FORCEDSVCLEDTASK:I = 0x1

.field private static final MSG_NO_REPEAT:I = 0xe

.field private static final MSG_REPEAT_ASSISTIVE_ALERT_BATTERY:I = 0xb

.field private static final MSG_REPEAT_ASSISTIVE_ALERT_DATA:I = 0xd

.field private static final MSG_REPEAT_ASSISTIVE_ALERT_STORAGE:I = 0xc

.field private static final MSG_REPEAT_CHARGING:I = 0x8

.field private static final MSG_REPEAT_NOTIFICATION:I = 0xa

.field private static final SMARTGLOW_ASSISTIVE_ALERT_BATTERY:I = 0x10

.field private static final SMARTGLOW_ASSISTIVE_ALERT_DATA:I = 0x40

.field private static final SMARTGLOW_ASSISTIVE_ALERT_STORAGE:I = 0x20

.field private static final SMARTGLOW_CALL:I = 0x4

.field private static final SMARTGLOW_CAMERA:I = 0x1

.field private static final SMARTGLOW_CHARGING:I = 0x2

.field private static final SMARTGLOW_MODE_ASSISTIVE_ALERT_BATTERY:I = 0x4

.field private static final SMARTGLOW_MODE_ASSISTIVE_ALERT_DATA:I = 0x6

.field private static final SMARTGLOW_MODE_ASSISTIVE_ALERT_STORAGE:I = 0x5

.field private static final SMARTGLOW_MODE_CALL:I = 0x2

.field private static final SMARTGLOW_MODE_CAMERA:I = 0x0

.field private static final SMARTGLOW_MODE_CHARGING:I = 0x1

.field private static final SMARTGLOW_MODE_COUNT:I = 0x7

.field private static final SMARTGLOW_MODE_NOTIFICATION:I = 0x3

.field private static final SMARTGLOW_NOTIFICATION:I = 0x8

.field private static final SMARTGLOW_NOTIFICATION_ALERT_MASK:I = 0x78

.field private static final SMARTGLOW_OFF:I = 0x0

.field public static final SUPPORT_LED_INDICATOR:Z

.field private static final SVCLED_BATTERY_MASK:I = 0x71

.field private static final SVCLED_CHARGING:I = 0x10

.field private static final SVCLED_CHARGING_ERROR:I = 0x1

.field private static final SVCLED_FULLY_CHARGED:I = 0x40

.field private static final SVCLED_LED_SERVICE:I = 0x8

.field private static final SVCLED_LED_SERVICE_MASK:I = 0x8

.field private static final SVCLED_LOW_BATTERY:I = 0x20

.field private static final SVCLED_MISSED_NOTIFICATION:I = 0x2

.field private static final SVCLED_MODE_CHARGING:I = 0x4

.field private static final SVCLED_MODE_CHARGING_ERROR:I = 0x0

.field private static final SVCLED_MODE_COUNT:I = 0x7

.field private static final SVCLED_MODE_FULLY_CHARGED:I = 0x6

.field private static final SVCLED_MODE_LED_SERVICE:I = 0x3

.field private static final SVCLED_MODE_LOW_BATTERY:I = 0x5

.field private static final SVCLED_MODE_MISSED_NOTIFICATION:I = 0x1

.field private static final SVCLED_MODE_OTHERS:I = 0x2

.field private static final SVCLED_NOTIFICATIONS_MASK:I = 0x6

.field private static final SVCLED_OFF:I = 0x0

.field private static final SVCLED_OTHERS:I = 0x4

.field static final TAG:Ljava/lang/String; = "LightsService"

.field public static final TAG_API:Ljava/lang/String; = "[api] "

.field public static final TAG_LED:Ljava/lang/String; = "[SvcLED] "

.field public static final TAG_SMARTGLOW:Ljava/lang/String; = "[SMARTGLOW] "

.field private static mPrevSmartGlowState:I

.field private static mPrevSvcLedState:I

.field private static mSmartGlowState:I

.field private static mSvcLedColor:I

.field private static mSvcLedMode:I

.field private static mSvcLedOffMS:I

.field private static mSvcLedOnMS:I

.field private static mSvcLedState:I


# instance fields
.field private final LED_LOW_POWER_PATH:Ljava/lang/String;

.field private isLightSensorEnabled:Z

.field private mAlarmManagerForSmartGlow:Landroid/app/AlarmManager;

.field private mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

.field private mBlinkTime:I

.field private mCameraOpen:Z

.field private final mContext:Landroid/content/Context;

.field private mCoverBatteryLight:Lcom/android/server/lights/Light;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverNotiLight:Lcom/android/server/lights/Light;

.field private mCoverOpened:Z

.field private mCoverServLight:Lcom/android/server/lights/Light;

.field mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mCoverType:I

.field private mCurrSmartGlowMode:I

.field private mDelayForcedSvcLEDTask:I

.field private mH:Landroid/os/Handler;

.field private mInitCompleteForSvcLED:Z

.field private mInitializedWakeLockPath:Z

.field private final mIntensityLock:Ljava/lang/Object;

.field private mIsLEDChanged:Z

.field private mIsPendingSmartGlowRequest:Z

.field private mLastSvcLedId:I

.field private mLedLowPower:I

.field mLightListener:Landroid/hardware/SensorEventListener;

.field private mLightSensor:Landroid/hardware/Sensor;

.field final mLights:[Lcom/android/server/lights/LightsService$LightImpl;

.field private mNativePointer:J

.field private final mNewWakeLockPaths:[Ljava/lang/String;

.field mPendingSmartGlowRequest:Lcom/android/server/lights/LightsService$SmartGlowImpl;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mService:Lcom/android/server/lights/LightsManager;

.field final mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

.field private mSmartGlowChargingStatusEnable:Z

.field private mSmartGlowEnabled:Z

.field private mSmartGlowIntensitySetting:I

.field private mSmartGlowRepeatSetting:I

.field private mSmartGlowSettingsObserver:Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;

.field private mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

.field private final mSvcLEDThread:Landroid/os/HandlerThread;

.field private mUpdateSvcLEDDelay:I

.field private mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

.field private mUseLEDAutoBrightness:Z

.field private mUsePatternLED:Z

.field private mUseSoftwareAutoBrightness:Z

.field private mVrModeEnabled:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field mWakeLockAcquired:Z

.field private mWakeLockPath:Ljava/lang/String;

.field private mWakeUnlockPath:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/lights/LightsService;)Landroid/app/AlarmManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSmartGlow:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/lights/LightsService;)Landroid/app/AlarmManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/lights/LightsService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mIntensityLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/lights/LightsService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/lights/LightsService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    return-wide v0
.end method

.method static synthetic -get14(Lcom/android/server/lights/LightsService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlowChargingStatusEnable:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/lights/LightsService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/lights/LightsService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlowRepeatSetting:I

    return v0
.end method

.method static synthetic -get17()I
    .locals 1

    sget v0, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/lights/LightsService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mCameraOpen:Z

    return v0
.end method

.method static synthetic -get20()I
    .locals 1

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    return v0
.end method

.method static synthetic -get21(Lcom/android/server/lights/LightsService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDDelay:I

    return v0
.end method

.method static synthetic -get22(Lcom/android/server/lights/LightsService;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/lights/LightsService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    return v0
.end method

.method static synthetic -get24(Lcom/android/server/lights/LightsService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    return v0
.end method

.method static synthetic -get25(Lcom/android/server/lights/LightsService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUseSoftwareAutoBrightness:Z

    return v0
.end method

.method static synthetic -get26(Lcom/android/server/lights/LightsService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mVrModeEnabled:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/lights/LightsService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/Light;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mCoverBatteryLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/Light;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mCoverNotiLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/lights/LightsService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/Light;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mCoverServLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/lights/LightsService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/lights/LightsService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/Light;)Lcom/android/server/lights/Light;
    .locals 0

    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mCoverBatteryLight:Lcom/android/server/lights/Light;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/Light;)Lcom/android/server/lights/Light;
    .locals 0

    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mCoverNotiLight:Lcom/android/server/lights/Light;

    return-object p1
.end method

.method static synthetic -set10(I)I
    .locals 0

    sput p0, Lcom/android/server/lights/LightsService;->mPrevSmartGlowState:I

    return p0
.end method

.method static synthetic -set11(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowChargingStatusEnable:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/lights/LightsService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/lights/LightsService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowRepeatSetting:I

    return p1
.end method

.method static synthetic -set14(I)I
    .locals 0

    sput p0, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    return p0
.end method

.method static synthetic -set15(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$SvcLEDHandler;)Lcom/android/server/lights/LightsService$SvcLEDHandler;
    .locals 0

    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    return-object p1
.end method

.method static synthetic -set16(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    return p1
.end method

.method static synthetic -set17(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    return p1
.end method

.method static synthetic -set18(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mUseSoftwareAutoBrightness:Z

    return p1
.end method

.method static synthetic -set19(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mVrModeEnabled:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/Light;)Lcom/android/server/lights/Light;
    .locals 0

    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mCoverServLight:Lcom/android/server/lights/Light;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/lights/LightsService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/lights/LightsService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/lights/LightsService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mIsPendingSmartGlowRequest:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/lights/LightsService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->getVrDisplayMode()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/lights/LightsService;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/lights/LightsService;IIIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/lights/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    return-void
.end method

.method static synthetic -wrap2()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/server/lights/LightsService;->callerInfoToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/lights/LightsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->acquireWakeLockForLED()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/lights/LightsService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;->clearSvcLedStateLocked(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/lights/LightsService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/lights/LightsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->handleForcedSvcLEDTask()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/lights/LightsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->setSmartGlowLocked()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/lights/LightsService;I[I[I[IIZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/lights/LightsService;->setSmartGlowStateLocked(I[I[I[IIZ)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/lights/LightsService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;->setSvcLedLightLocked(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->NOVEL_PROJECT:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/android/server/lights/LightsService;->SUPPORT_LED_INDICATOR:Z

    sput v2, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    sput v2, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    sput v2, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    sput v2, Lcom/android/server/lights/LightsService;->mPrevSmartGlowState:I

    sput v2, Lcom/android/server/lights/LightsService;->mSvcLedColor:I

    sput v2, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    sput v2, Lcom/android/server/lights/LightsService;->mSvcLedOnMS:I

    sput v2, Lcom/android/server/lights/LightsService;->mSvcLedOffMS:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v3, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-boolean v4, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z

    const/16 v2, 0x2bc

    iput v2, p0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    const/16 v2, 0xfa0

    iput v2, p0, Lcom/android/server/lights/LightsService;->mBlinkTime:I

    iput-boolean v4, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    iput-boolean v5, p0, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    const v2, 0x927c0

    iput v2, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDDelay:I

    iput-object v6, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iput-boolean v5, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    iput v3, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    iput v7, p0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    iput-boolean v4, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "/sys/power/wake_lock"

    aput-object v3, v2, v4

    const-string/jumbo v3, "/sys/power/wake_unlock"

    aput-object v3, v2, v5

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v2, v2, v4

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mWakeLockPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v2, v2, v5

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    const/16 v2, 0xe

    new-array v2, v2, [Lcom/android/server/lights/LightsService$LightImpl;

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v2, 0x7

    new-array v2, v2, [Lcom/android/server/lights/LightsService$SmartGlowImpl;

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    new-instance v2, Lcom/android/server/lights/LightsService$SmartGlowImpl;

    invoke-direct {v2, p0, v6}, Lcom/android/server/lights/LightsService$SmartGlowImpl;-><init>(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$SmartGlowImpl;)V

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mPendingSmartGlowRequest:Lcom/android/server/lights/LightsService$SmartGlowImpl;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mIntensityLock:Ljava/lang/Object;

    new-instance v2, Lcom/android/server/lights/LightsService$1;

    invoke-direct {v2, p0}, Lcom/android/server/lights/LightsService$1;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    new-instance v2, Lcom/android/server/lights/LightsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/lights/LightsService$2;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    new-instance v2, Lcom/android/server/lights/LightsService$3;

    invoke-direct {v2, p0}, Lcom/android/server/lights/LightsService$3;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/lights/LightsService$4;

    invoke-direct {v2, p0}, Lcom/android/server/lights/LightsService$4;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    iput-boolean v4, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    new-instance v2, Lcom/android/server/lights/LightsService$5;

    invoke-direct {v2, p0}, Lcom/android/server/lights/LightsService$5;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    const-string/jumbo v2, "/sys/class/sec/led/led_lowpower"

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->LED_LOW_POWER_PATH:Ljava/lang/String;

    iput v7, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    const/4 v2, 0x5

    iput v2, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    iput-boolean v4, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    invoke-static {}, Lcom/android/server/lights/LightsService;->init_native()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    iput-boolean v4, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z

    new-instance v2, Lcom/android/server/lights/LightsService$6;

    const-string/jumbo v3, "mSvcLEDThread"

    invoke-direct {v2, p0, v3}, Lcom/android/server/lights/LightsService$6;-><init>(Lcom/android/server/lights/LightsService;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    monitor-enter v3

    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit v3

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v3, Lcom/android/server/lights/LightsService$LightImpl;

    invoke-direct {v3, p0, v1, v6}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$LightImpl;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x7

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    new-instance v3, Lcom/android/server/lights/LightsService$SmartGlowImpl;

    invoke-direct {v3, p0, v6}, Lcom/android/server/lights/LightsService$SmartGlowImpl;-><init>(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$SmartGlowImpl;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;

    invoke-direct {v2, p0}, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mSmartGlowSettingsObserver:Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;

    return-void
.end method

.method private acquireWakeLockForLED()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "LightsService"

    const-string/jumbo v1, "acquireWakeLockForLED: WakeLock path is not initialized"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockPath:Ljava/lang/String;

    const-string/jumbo v1, "LightsService"

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    :cond_1
    return-void
.end method

.method private static callerInfoToString()Ljava/lang/String;
    .locals 5

    const-string/jumbo v1, ""

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " (uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private clearSvcLedStateLocked(I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/lights/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    return-void
.end method

.method private enableSvcLEDLightSensorLocked(Z)V
    .locals 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-boolean v2, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    goto :goto_0
.end method

.method private static native finalize_native(J)V
.end method

.method private getVrDisplayMode()I
    .locals 4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vr_display_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method private handleForcedSvcLEDTask()V
    .locals 2

    const-string/jumbo v0, "LightsService"

    const-string/jumbo v1, "[SvcLED] handleForcedSvcLEDTask()"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/android/server/lights/LightsService;->setSvcLedLightLocked(I)V

    return-void
.end method

.method private initCoverState()V
    .locals 4

    const-string/jumbo v1, "LightsService"

    const-string/jumbo v2, "initCoverState()start"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    iput v1, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    const-string/jumbo v1, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initCoverState() coverstate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, "LightsService"

    const-string/jumbo v2, "initCoverState() : state is null"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v1, "LightsService"

    const-string/jumbo v2, "initCoverState() : mCoverManager is null!!!!"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static native init_native()J
.end method

.method private initializeWakeLockPath()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->fileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->fileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "LightsService"

    const-string/jumbo v1, "wake_lock path does not exists"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v0, "LightsService"

    const-string/jumbo v1, "wake_unlock path does not exists "

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerContentObserver(Landroid/content/ContentResolver;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "ml_status"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I

    const-string/jumbo v0, "ml_repeat_value"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlowRepeatSetting:I

    const-string/jumbo v0, "ml_battery_charging"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlowChargingStatusEnable:Z

    iget v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iput v2, p0, Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I

    :cond_0
    const-string/jumbo v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SmartGlow Intensity Settings = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SmartGlow Repeat Settings Changed = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/lights/LightsService;->mSmartGlowRepeatSetting:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SmartGlow Charging Status Settings Changed = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/lights/LightsService;->mSmartGlowChargingStatusEnable:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I

    if-eqz v0, :cond_1

    const-string/jumbo v0, "/sys/class/leds/led_1/intensity"

    iget v1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "/sys/class/leds/led_2/intensity"

    iget v1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "/sys/class/leds/led_3/intensity"

    iget v1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "/sys/class/leds/led_4/intensity"

    iget v1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowIntensitySetting:I

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    :cond_1
    const-string/jumbo v0, "ml_status"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowSettingsObserver:Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;

    invoke-virtual {p1, v0, v2, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v0, "ml_repeat_value"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowSettingsObserver:Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;

    invoke-virtual {p1, v0, v2, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v0, "ml_battery_charging"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowSettingsObserver:Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;

    invoke-virtual {p1, v0, v2, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void

    :cond_2
    move v0, v2

    goto/16 :goto_0
.end method

.method private releaseWakeLockForLED()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "LightsService"

    const-string/jumbo v1, "releaseWakeLockForLED: WakeLock path is not initialized"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    const-string/jumbo v1, "LightsService"

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    goto :goto_0
.end method

.method static native setLight_native(JIIIIII)V
.end method

.method private setSmartGlowLocked()V
    .locals 18

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/lights/LightsService;->mCameraOpen:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/lights/LightsService;->mSmartGlowEnabled:Z

    if-nez v2, :cond_4

    sget v2, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    const/4 v11, 0x1

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    if-eq v2, v11, :cond_10

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    aget-object v2, v2, v11

    invoke-static {v2}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-get1(Lcom/android/server/lights/LightsService$SmartGlowImpl;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    aget-object v2, v2, v11

    invoke-static {v2}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-get0(Lcom/android/server/lights/LightsService$SmartGlowImpl;)[I

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    aget-object v2, v2, v11

    invoke-static {v2}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-get3(Lcom/android/server/lights/LightsService$SmartGlowImpl;)[I

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    aget-object v2, v2, v11

    invoke-static {v2}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-get2(Lcom/android/server/lights/LightsService$SmartGlowImpl;)[I

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    const/16 v4, 0xd

    invoke-static/range {v2 .. v8}, Lcom/android/server/lights/LightsService;->setSmartGlow_native(JII[I[I[I)V

    const/4 v2, 0x2

    if-ne v11, v2, :cond_e

    return-void

    :cond_2
    sget v2, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_3

    const/4 v11, 0x4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-set4(Lcom/android/server/lights/LightsService$SmartGlowImpl;I)I

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    filled-new-array {v4, v13, v14, v15}, [I

    move-result-object v6

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    filled-new-array {v4, v13, v14, v15}, [I

    move-result-object v7

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    filled-new-array {v4, v13, v14, v15}, [I

    move-result-object v8

    const/16 v4, 0xd

    const/4 v5, -0x1

    invoke-static/range {v2 .. v8}, Lcom/android/server/lights/LightsService;->setSmartGlow_native(JII[I[I[I)V

    return-void

    :cond_4
    sget v2, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/lights/LightsService;->mIsPendingSmartGlowRequest:Z

    if-eqz v2, :cond_9

    :cond_5
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v11, 0x0

    :goto_1
    const/4 v2, 0x4

    if-ge v11, v2, :cond_6

    sget v2, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    shr-int/2addr v2, v11

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a

    :cond_6
    const/4 v2, 0x4

    if-ne v11, v2, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/lights/LightsService;->mIsPendingSmartGlowRequest:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    const/4 v3, 0x1

    shl-int v2, v3, v2

    sget v3, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    and-int/2addr v2, v3

    if-nez v2, :cond_b

    :cond_7
    const/4 v11, 0x3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/lights/LightsService;->mIsPendingSmartGlowRequest:Z

    sget v2, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    or-int/lit8 v2, v2, 0x8

    sput v2, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/lights/LightsService;->mPendingSmartGlowRequest:Lcom/android/server/lights/LightsService$SmartGlowImpl;

    invoke-static {v3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-get1(Lcom/android/server/lights/LightsService$SmartGlowImpl;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-set1(Lcom/android/server/lights/LightsService$SmartGlowImpl;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/lights/LightsService;->mPendingSmartGlowRequest:Lcom/android/server/lights/LightsService$SmartGlowImpl;

    invoke-static {v3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-get0(Lcom/android/server/lights/LightsService$SmartGlowImpl;)[I

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-set0(Lcom/android/server/lights/LightsService$SmartGlowImpl;[I)[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/lights/LightsService;->mPendingSmartGlowRequest:Lcom/android/server/lights/LightsService$SmartGlowImpl;

    invoke-static {v3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-get3(Lcom/android/server/lights/LightsService$SmartGlowImpl;)[I

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-set3(Lcom/android/server/lights/LightsService$SmartGlowImpl;[I)[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/lights/LightsService;->mPendingSmartGlowRequest:Lcom/android/server/lights/LightsService$SmartGlowImpl;

    invoke-static {v3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-get2(Lcom/android/server/lights/LightsService$SmartGlowImpl;)[I

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-set2(Lcom/android/server/lights/LightsService$SmartGlowImpl;[I)[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/lights/LightsService;->mPendingSmartGlowRequest:Lcom/android/server/lights/LightsService$SmartGlowImpl;

    invoke-static {v3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-get4(Lcom/android/server/lights/LightsService$SmartGlowImpl;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-set4(Lcom/android/server/lights/LightsService$SmartGlowImpl;I)I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    sget v2, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    shr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    return-void

    :cond_9
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    filled-new-array {v4, v13, v14, v15}, [I

    move-result-object v6

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    filled-new-array {v4, v13, v14, v15}, [I

    move-result-object v7

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    filled-new-array {v4, v13, v14, v15}, [I

    move-result-object v8

    const/16 v4, 0xd

    const/4 v5, -0x1

    invoke-static/range {v2 .. v8}, Lcom/android/server/lights/LightsService;->setSmartGlow_native(JII[I[I[I)V

    return-void

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_b
    const/4 v2, 0x2

    if-eq v11, v2, :cond_c

    const/4 v2, 0x1

    if-ne v11, v2, :cond_8

    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    if-eq v2, v11, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_d

    sget v2, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    const/4 v4, 0x1

    shl-int v3, v4, v3

    not-int v3, v3

    and-int/2addr v2, v3

    sput v2, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSmartGlow:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v13, "com.android.server.LightsService.action.UPDATE_SMARTGLOW_STATE"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v3, v13, v4, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_d
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/lights/LightsService;->mCurrSmartGlowMode:I

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSmartGlow:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/lights/LightsService;->mBlinkTime:I

    int-to-long v0, v3

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v13, "com.android.server.LightsService.action.UPDATE_SMARTGLOW_STATE"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v13, 0x10000000

    invoke-virtual {v4, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const/4 v13, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v3, v13, v4, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v14, v15, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    const/4 v2, 0x1

    if-ne v11, v2, :cond_f

    return-void

    :cond_f
    add-int/lit8 v12, v11, 0x7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSmartGlow:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v13, "com.android.server.LightsService.action.UPDATE_SMARTGLOW_STATE"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v3, v13, v4, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    aget-object v2, v2, v11

    invoke-static {v2}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-get4(Lcom/android/server/lights/LightsService$SmartGlowImpl;)I

    move-result v2

    if-lez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSmartGlow:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-wide/32 v16, 0x1d4c0

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v13, "com.android.server.LightsService.action.UPDATE_SMARTGLOW_STATE"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v13, 0x10000000

    invoke-virtual {v4, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const/4 v13, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v3, v13, v4, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v14, v15, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_10
    return-void
.end method

.method private setSmartGlowStateLocked(I[I[I[IIZ)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v0, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    sput v0, Lcom/android/server/lights/LightsService;->mPrevSmartGlowState:I

    if-eqz p6, :cond_1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mCameraOpen:Z

    if-eqz v0, :cond_0

    if-ne p5, v4, :cond_0

    return-void

    :cond_0
    packed-switch p5, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    aget-object v0, v0, p5

    iget v1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowRepeatSetting:I

    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-set4(Lcom/android/server/lights/LightsService$SmartGlowImpl;I)I

    :pswitch_1
    sget v0, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    shl-int v1, v4, p5

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    aget-object v0, v0, p5

    invoke-static {v0, p1}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-set1(Lcom/android/server/lights/LightsService$SmartGlowImpl;I)I

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    aget-object v0, v0, p5

    invoke-static {v0, p2}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-set0(Lcom/android/server/lights/LightsService$SmartGlowImpl;[I)[I

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    aget-object v0, v0, p5

    invoke-static {v0, p3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-set3(Lcom/android/server/lights/LightsService$SmartGlowImpl;[I)[I

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    aget-object v0, v0, p5

    invoke-static {v0, p4}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-set2(Lcom/android/server/lights/LightsService$SmartGlowImpl;[I)[I

    :goto_0
    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->setSmartGlowLocked()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSmartGlow:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.server.LightsService.action.UPDATE_SMARTGLOW_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "10"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iput-boolean v4, p0, Lcom/android/server/lights/LightsService;->mIsPendingSmartGlowRequest:Z

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mPendingSmartGlowRequest:Lcom/android/server/lights/LightsService$SmartGlowImpl;

    invoke-static {v0, p1}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-set1(Lcom/android/server/lights/LightsService$SmartGlowImpl;I)I

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mPendingSmartGlowRequest:Lcom/android/server/lights/LightsService$SmartGlowImpl;

    invoke-static {v0, p2}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-set0(Lcom/android/server/lights/LightsService$SmartGlowImpl;[I)[I

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mPendingSmartGlowRequest:Lcom/android/server/lights/LightsService$SmartGlowImpl;

    invoke-static {v0, p3}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-set3(Lcom/android/server/lights/LightsService$SmartGlowImpl;[I)[I

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mPendingSmartGlowRequest:Lcom/android/server/lights/LightsService$SmartGlowImpl;

    invoke-static {v0, p4}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-set2(Lcom/android/server/lights/LightsService$SmartGlowImpl;[I)[I

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mPendingSmartGlowRequest:Lcom/android/server/lights/LightsService$SmartGlowImpl;

    iget v1, p0, Lcom/android/server/lights/LightsService;->mSmartGlowRepeatSetting:I

    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-set4(Lcom/android/server/lights/LightsService$SmartGlowImpl;I)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p5, v0, :cond_2

    iput-boolean v5, p0, Lcom/android/server/lights/LightsService;->mIsPendingSmartGlowRequest:Z

    :cond_2
    sget v0, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    shl-int v1, v4, p5

    not-int v1, v1

    and-int/2addr v0, v1

    sput v0, Lcom/android/server/lights/LightsService;->mSmartGlowState:I

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSmartGlow:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.server.LightsService.action.UPDATE_SMARTGLOW_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSmartGlow:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.server.LightsService.action.UPDATE_SMARTGLOW_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p5, 0x7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static native setSmartGlow_native(JII[I[I[I)V
.end method

.method private setSvcLedLightLocked(I)V
    .locals 11

    const/4 v5, 0x0

    const/16 v0, 0x14

    if-ge p1, v0, :cond_2

    const/4 v6, 0x1

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    if-eq v6, v0, :cond_0

    iput v6, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    const-string/jumbo v0, "/sys/class/sec/led/led_lowpower"

    iget v1, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    :cond_0
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v9, 0x0

    :goto_1
    const/4 v0, 0x7

    if-ge v9, v0, :cond_1

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    shr-int/2addr v0, v9

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    :cond_1
    const/4 v2, 0x0

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-nez v0, :cond_4

    iget v10, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    const/4 v2, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v0, v0, v10

    sget v1, Lcom/android/server/lights/LightsService;->mSvcLedColor:I

    sget v3, Lcom/android/server/lights/LightsService;->mSvcLedOnMS:I

    sget v4, Lcom/android/server/lights/LightsService;->mSvcLedOffMS:I

    invoke-static/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->-wrap0(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V

    iget v0, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    if-eq v0, v10, :cond_5

    const-string/jumbo v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[SvcLED]  setSvcLedLightLocked :: priority changed! SvcLED(id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ") OUT; SvcLED(id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ") IN"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iput v10, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->releaseWakeLockForLED()V

    return-void

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    packed-switch v9, :pswitch_data_0

    const/4 v10, 0x7

    const/4 v2, 0x0

    goto :goto_2

    :pswitch_0
    const/4 v10, 0x5

    const/16 v2, 0xb

    goto :goto_2

    :pswitch_1
    const/4 v10, 0x6

    const/16 v2, 0xc

    goto :goto_2

    :pswitch_2
    const/4 v10, 0x6

    sget v2, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    goto :goto_2

    :pswitch_3
    const/16 v10, 0xc

    sget v2, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    goto :goto_2

    :pswitch_4
    const/4 v10, 0x5

    const/16 v2, 0xa

    goto :goto_2

    :pswitch_5
    const/4 v10, 0x5

    const/16 v2, 0xd

    goto :goto_2

    :pswitch_6
    const/4 v10, 0x5

    const/16 v2, 0xe

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[SvcLED]  setSvcLedLightLocked :: Current SvcLED(id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ") maintains its priority right"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

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

.method private setSvcLedStateLocked(IIIIIZ)V
    .locals 3

    const/16 v1, 0xc

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    sput v0, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x72

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-eqz p6, :cond_0

    const/16 v0, 0xa

    if-ne p3, v0, :cond_2

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x10

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    :cond_0
    :goto_0
    sget v0, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    sget v1, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    :cond_1
    const-string/jumbo v1, "LightsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[SvcLED] setSvcLedStateLocked:: SvcLEDState : 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " | SvcLED(id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") set "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p6, :cond_c

    const-string/jumbo v0, "On"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/16 v0, 0xe

    if-ne p3, v0, :cond_3

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x40

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    goto :goto_0

    :cond_3
    const/16 v0, 0xd

    if-ne p3, v0, :cond_4

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x20

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    goto :goto_0

    :cond_4
    const/16 v0, 0xb

    if-ne p3, v0, :cond_5

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[SvcLED]  setSvcLedStateLocked::Not Support mode in LIGHT_ID_BATTERY. mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x6

    if-ne p1, v0, :cond_9

    if-eqz p6, :cond_8

    if-ne p3, v1, :cond_7

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    goto/16 :goto_0

    :cond_7
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x4

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    sput p2, Lcom/android/server/lights/LightsService;->mSvcLedColor:I

    sput p3, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    sput p4, Lcom/android/server/lights/LightsService;->mSvcLedOnMS:I

    sput p5, Lcom/android/server/lights/LightsService;->mSvcLedOffMS:I

    goto/16 :goto_0

    :cond_8
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x7

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    goto/16 :goto_0

    :cond_9
    if-ne p1, v1, :cond_b

    if-eqz p6, :cond_a

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x8

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    sput p2, Lcom/android/server/lights/LightsService;->mSvcLedColor:I

    sput p3, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    sput p4, Lcom/android/server/lights/LightsService;->mSvcLedOnMS:I

    sput p5, Lcom/android/server/lights/LightsService;->mSvcLedOffMS:I

    goto/16 :goto_0

    :cond_a
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x9

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[SvcLED]  setSvcLedStateLocked::Not Support. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v0, "Off"

    goto/16 :goto_1
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->finalize_native(J)V

    invoke-super {p0}, Lcom/android/server/SystemService;->finalize()V

    return-void
.end method

.method public onBootPhase(I)V
    .locals 5

    const/16 v2, 0x1f4

    if-ne p1, v2, :cond_0

    const-string/jumbo v2, "vrmanager"

    invoke-virtual {p0, v2}, Lcom/android/server/lights/LightsService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Landroid/service/vr/IVrManager;

    :try_start_0
    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v1, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->systemReady()V

    :cond_0
    const/16 v2, 0x226

    if-ne p1, v2, :cond_1

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LightsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to register VR mode state listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    const-class v0, Lcom/android/server/lights/LightsManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public systemReady()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v2, "LightsService"

    const-string/jumbo v3, "[SvcLED] systemReady"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSmartGlow:Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    new-instance v2, Landroid/hardware/SystemSensorManager;

    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-boolean v2, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    :cond_0
    new-instance v2, Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->initCoverState()V

    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->initializeWakeLockPath()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/lights/LightsService$SvcLEDReceiver;

    invoke-direct {v3, p0, v5}, Lcom/android/server/lights/LightsService$SvcLEDReceiver;-><init>(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$SvcLEDReceiver;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_1
    const-string/jumbo v2, "LightsService"

    const-string/jumbo v3, "initLightsService() : mCoverManager is null!!!!"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
