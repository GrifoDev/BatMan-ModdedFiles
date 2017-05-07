.class public Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;
.super Ljava/lang/Object;
.source "DexFanControlManager.java"

# interfaces
.implements Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControl;
.implements Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;,
        Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;,
        Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCurrentFanMode:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;

.field private mDexConnection:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;

.field private mDexFanControlListener:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlListener;

.field private mDexFanLevelValueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFanHoldingTimerTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanHoldingTimerTask;",
            ">;"
        }
    .end annotation
.end field

.field private mFanModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;",
            "Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDexMode:Z

.field private mIsExistSystemRequest:Z

.field private mPrevFanLevel:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

.field private mSiopLevel:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZIZLcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlListener;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mIsDexMode:Z

    iput-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mSiopLevel:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    iput-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mPrevFanLevel:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mIsExistSystemRequest:Z

    iput-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mDexFanControlListener:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlListener;

    iput-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    iput-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mDexConnection:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;

    iput-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mDexFanLevelValueMap:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    iput-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mCurrentFanMode:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;

    iput-object v2, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    sget-object v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "DexFanControlManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;

    invoke-direct {v0, v2}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mDexConnection:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;

    invoke-virtual {p0, p4}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->setDexFanControlListener(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlListener;)V

    invoke-static {p2}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->fromValue(I)Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mSiopLevel:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->setDexMode(Z)V

    invoke-virtual {p0, p3}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->setSystemRequest(Z)V

    invoke-virtual {p0, p2}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->setSiopLevel(I)V

    return-void
.end method

.method private controlFanLevel()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->getCurrentFanMode()Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;->getCurrentFanLevel()Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    move-result-object v0

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "controlFanLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mPrevFanLevel:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->writeFanLevel(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;)V

    iget-object v1, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mDexFanControlListener:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mDexFanControlListener:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlListener;

    invoke-interface {v1, v0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlListener;->onFanLevelChanged(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;)V

    :cond_0
    return-void
.end method

.method private getCurrentFanMode()Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;
    .locals 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mCurrentFanMode:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->getFanModeMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;->NoramlMode:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;

    iput-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mCurrentFanMode:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;

    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mCurrentFanMode:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;

    return-object v0
.end method

.method private getFanHoldingTimer()Ljava/util/Timer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method private getFanModeMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;",
            "Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;->NonDexMode:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;

    new-instance v2, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NonDexMode;

    invoke-direct {v2, p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NonDexMode;-><init>(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;->NoramlMode:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;

    new-instance v2, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NormalMode;

    invoke-direct {v2, p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/NormalMode;-><init>(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;->FanHoldingMode:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;

    new-instance v2, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanHoldingMode;

    invoke-direct {v2, p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanHoldingMode;-><init>(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;->SystemRequestMode:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;

    new-instance v2, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/SystemRequestMode;

    invoke-direct {v2, p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/SystemRequestMode;-><init>(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    return-object v0
.end method

.method private writeFanLevel(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mDexConnection:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mIsDexMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeFanLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->getFanLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mDexConnection:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->getDexFanLevelValue()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->sendDexFanControl(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addFanHoldingTimerTask(I)V
    .locals 4

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFanHoldingEvent_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanHoldingTimerTask;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanHoldingTimerTask;-><init>(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->getFanHoldingTimerTaskList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->getCurrentFanMode()Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->getFanHoldingRequestCount()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;->onChangedFanHoldingRequestCount(I)V

    invoke-direct {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->getFanHoldingTimer()Ljava/util/Timer;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    invoke-direct {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->controlFanLevel()V

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "currentFanHoldingCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->getFanHoldingTimerTaskList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public clearAllFanHoldingTimerTask()V
    .locals 3

    sget-object v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "before clear:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->getFanHoldingRequestCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->getFanHoldingRequestCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->getFanHoldingTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    sget-object v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "after clear:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->getFanHoldingRequestCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getDexFanLevelValue()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mDexFanLevelValueMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mDexFanLevelValueMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mDexFanLevelValueMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    const v2, -0x5fdffef0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mDexFanLevelValueMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->WEAK:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    const v2, -0x5fdffeef    # -1.355288E-19f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mDexFanLevelValueMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->MILD:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    const v2, -0x5fdffeee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mDexFanLevelValueMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->STRONG:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    const v2, -0x5fdffeed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mDexFanLevelValueMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getFanHoldingRequestCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->getFanHoldingTimerTaskList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFanHoldingTimerTaskList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanHoldingTimerTask;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    return-object v0
.end method

.method public getFanLevel()Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->getCurrentFanMode()Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;->getCurrentFanLevel()Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    move-result-object v0

    return-object v0
.end method

.method public getSiopLevel()Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mSiopLevel:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    return-object v0
.end method

.method public isDexMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mIsDexMode:Z

    return v0
.end method

.method public isExistSystemRequest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mIsExistSystemRequest:Z

    return v0
.end method

.method public onFanHoldingEvent(I)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->getCurrentFanMode()Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;->onReceivedFanHoldingEvent(I)V

    return-void
.end method

.method public onFinishedFanHoldingTimerTask(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanHoldingTimerTask;)V
    .locals 3

    sget-object v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "before remove:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->getFanHoldingRequestCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->getFanHoldingTimerTaskList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "after remove:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->getFanHoldingRequestCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->getCurrentFanMode()Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->getFanHoldingRequestCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;->onChangedFanHoldingRequestCount(I)V

    invoke-direct {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->controlFanLevel()V

    return-void
.end method

.method public setDexFanControlListener(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mDexFanControlListener:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlListener;

    return-void
.end method

.method public setDexMode(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mIsDexMode:Z

    invoke-direct {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->getCurrentFanMode()Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mIsDexMode:Z

    invoke-interface {v0, v1}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;->onChangedDexMode(Z)V

    invoke-direct {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->controlFanLevel()V

    return-void
.end method

.method public setFanMode(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->getFanModeMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;

    iput-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mCurrentFanMode:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;

    return-void
.end method

.method public setFanStatusForTest(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mDexConnection:Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->getFanLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->sendDexFanControl(I)V

    return-void
.end method

.method public setSiopLevel(I)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->fromValue(I)Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mSiopLevel:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    invoke-direct {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->controlFanLevel()V

    return-void
.end method

.method public setSystemRequest(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSystemRequest : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mIsExistSystemRequest:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mIsExistSystemRequest:Z

    invoke-direct {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->getCurrentFanMode()Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->mIsExistSystemRequest:Z

    invoke-interface {v0, v1}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/fanmode/FanMode;->onChangedSystemRequestStatus(Z)V

    invoke-direct {p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->controlFanLevel()V

    :cond_0
    return-void
.end method
