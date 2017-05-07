.class public Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;
.super Ljava/lang/Object;
.source "DexMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$1;,
        Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$2;,
        Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$3;,
        Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$4;
    }
.end annotation


# static fields
.field private static final CCIC_DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/ccic_dock"

.field private static final DOCK_STATE_DEX_STATION:I = 0x6e

.field private static final DOCK_STATE_NONE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field public mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

.field private mContext:Landroid/content/Context;

.field private mDexFanControl:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;

.field private mDexFanControlListener:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlListener;

.field private mDexMode:Z

.field private mDexMonitorIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAudioRecodingMode:Z

.field private mIsCallMode:Z

.field private mIsScreenOffMode:Z

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSiopLevel:I

.field private mSupportTestApp:Z

.field private final mUEventObserver:Landroid/os/UEventObserver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;)Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mDexFanControl:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mIsAudioRecodingMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mIsCallMode:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mIsScreenOffMode:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->isExistSystemRequest()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->setDockState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mDexMode:Z

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mIsCallMode:Z

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mIsScreenOffMode:Z

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mIsAudioRecodingMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mSupportTestApp:Z

    iput v1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mSiopLevel:I

    iput-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mDexFanControl:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;

    iput-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$1;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$1;-><init>(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    new-instance v0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$2;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$2;-><init>(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$3;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$3;-><init>(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mDexFanControlListener:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlListener;

    new-instance v0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$4;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$4;-><init>(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mUEventObserver:Landroid/os/UEventObserver;

    iput-object p1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->initDexDockConnectedMode()V

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->initSIOPlevel()V

    new-instance v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;

    iget-boolean v1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mDexMode:Z

    iget v2, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mSiopLevel:I

    invoke-direct {p0}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->isExistSystemRequest()Z

    move-result v3

    iget-object v4, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mDexFanControlListener:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;-><init>(ZIZLcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlListener;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mDexFanControl:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mUEventObserver:Landroid/os/UEventObserver;

    const-string/jumbo v1, "DEVPATH=/devices/virtual/switch/ccic_dock"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->registerPhoneStateListener()V

    invoke-direct {p0}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->initFanControlReceiver()V

    return-void
.end method

.method private initFanControlReceiver()V
    .locals 3

    new-instance v1, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$5;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor$5;-><init>(Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mDexMonitorIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.intent.action.CHECK_SIOP_LEVEL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.accessory.action.DEX_FAN_HOLDING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mSupportTestApp:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "com.samsung.accessory.action.DEX_FAN_ON_TEMP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.accessory.action.DEX_FAN_OFF_TEMP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.intent.action.CHECK_SIOP_LEVEL_TEMP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mDexMonitorIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private isExistSystemRequest()Z
    .locals 2

    iget-boolean v1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mIsCallMode:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mIsScreenOffMode:Z

    if-nez v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mIsAudioRecodingMode:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setDockState(I)V
    .locals 3

    sget-object v0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDockState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mDexFanControl:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;->setDexMode(Z)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mDexFanControl:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;->setDexMode(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public initDexDockConnectedMode()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "desktopmode"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopDockConnected()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mDexMode:Z

    return-void
.end method

.method public initSIOPlevel()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/os/SemTemperatureManager;->getOverheatingProtectionLevel(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mSiopLevel:I

    return-void
.end method

.method public registerAudioRecodingListener()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerAudioRecodingListener - mAudioManager is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerPhoneStateListener()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/accessory/manager/control/dexstation/DexMonitor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method
