.class public Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanHoldingTimerTask;
.super Ljava/util/TimerTask;
.source "DexFanHoldingTimerTask.java"


# instance fields
.field private mDexFanModeControl:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;

.field private mIsFinished:Z


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanHoldingTimerTask;->mIsFinished:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanHoldingTimerTask;->mDexFanModeControl:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;

    iput-object p1, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanHoldingTimerTask;->mDexFanModeControl:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanHoldingTimerTask;->mIsFinished:Z

    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanHoldingTimerTask;->mIsFinished:Z

    return v0
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanHoldingTimerTask;->mIsFinished:Z

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanHoldingTimerTask;->mDexFanModeControl:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanHoldingTimerTask;->mDexFanModeControl:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;

    invoke-interface {v0, p0}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;->onFinishedFanHoldingTimerTask(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanHoldingTimerTask;)V

    :cond_0
    return-void
.end method
