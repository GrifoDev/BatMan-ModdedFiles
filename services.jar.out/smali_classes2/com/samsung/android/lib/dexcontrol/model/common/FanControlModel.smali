.class public abstract Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;
.super Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;
.source "FanControlModel.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isSiopLevelValid:Z

.field private isTestAppSIOPEnable:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

.field private mAudioSystemRequestEnable:Z

.field private mDexModel:I

.field private mDexMonitorIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

.field private final mIDexFanControlListener:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControlListener;

.field private mIsAudioRecodingMode:Z

.field private mIsCallMode:Z

.field private mIsScreenOffMode:Z

.field protected mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSiopLevel:I

.field private final mSupportTestApp:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZI)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIsCallMode:Z

    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIsScreenOffMode:Z

    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIsAudioRecodingMode:Z

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mAudioManager:Landroid/media/AudioManager;

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mSiopLevel:I

    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mAudioSystemRequestEnable:Z

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mDexModel:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mSupportTestApp:Z

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->isTestAppSIOPEnable:Z

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$1;-><init>(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControlListener:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControlListener;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;-><init>(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$3;-><init>(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->initFanControlReceiver()V

    iput-boolean p2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mAudioSystemRequestEnable:Z

    iput p3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mDexModel:I

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->registerAudioRecodingListener()V

    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mAudioSystemRequestEnable:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->registerPhoneStateListener()V

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->isSiopLevelValid:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIsScreenOffMode:Z

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->isSiopLevelValid:Z

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIsCallMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->isExistSystemRequest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIsAudioRecodingMode:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->registerAudioRecodingListener()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mSiopLevel:I

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mSiopLevel:I

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->isTestAppSIOPEnable:Z

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->isTestAppSIOPEnable:Z

    return p1
.end method

.method private initFanControlReceiver()V
    .locals 3

    new-instance v1, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$4;-><init>(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)V

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mDexMonitorIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.intent.action.CHECK_SIOP_LEVEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.accessory.action.DEX_FAN_HOLDING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.accessory.action.DEX_FAN_ON_TEMP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.accessory.action.DEX_FAN_OFF_TEMP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.intent.action.CHECK_SIOP_LEVEL_TEMP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mDexMonitorIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private isExistSystemRequest()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIsCallMode:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIsScreenOffMode:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIsAudioRecodingMode:Z

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private registerAudioRecodingListener()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerAudioRecodingListener - mAudioManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private registerPhoneStateListener()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method


# virtual methods
.method protected creatFanControl()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->isSiopLevelValid:Z

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mSiopLevel:I

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->isExistSystemRequest()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControlListener:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControlListener;

    iget v4, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mDexModel:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;-><init>(IZLcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControlListener;I)V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    return-void
.end method

.method protected destroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->destroy()V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_3

    :goto_3
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    invoke-interface {v0, v2}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;->setResponseListener(Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    invoke-interface {v0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;->destroy()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    invoke-interface {v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;->destroy()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mAudioManager:Landroid/media/AudioManager;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_3
.end method

.method protected abstract onFanControlResult(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;)V
.end method

.method public onFanHoldingEvent(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;->onFanHoldingEvent(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected abstract setMessageSender(Landroid/content/Context;)V
.end method

.method public setSiopLevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    invoke-interface {v0, p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;->setSiopLevel(I)V

    goto :goto_0
.end method

.method public setSystemRequest(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    invoke-interface {v0, p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;->setSystemRequest(Z)V

    goto :goto_0
.end method

.method protected unregisterReceiver()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->unregisterReceiver()V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mDexMonitorIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected updateResponsedFanLevel(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateResponsedFanLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    invoke-interface {v0, p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;->onDexFanLevelUpdated(I)V

    return-void
.end method
