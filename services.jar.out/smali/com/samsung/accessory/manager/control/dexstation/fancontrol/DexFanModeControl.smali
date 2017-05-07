.class public interface abstract Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanModeControl;
.super Ljava/lang/Object;
.source "DexFanModeControl.java"


# virtual methods
.method public abstract addFanHoldingTimerTask(I)V
.end method

.method public abstract clearAllFanHoldingTimerTask()V
.end method

.method public abstract getFanHoldingRequestCount()I
.end method

.method public abstract getSiopLevel()Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;
.end method

.method public abstract isDexMode()Z
.end method

.method public abstract isExistSystemRequest()Z
.end method

.method public abstract onFinishedFanHoldingTimerTask(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanHoldingTimerTask;)V
.end method

.method public abstract setFanMode(Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FanModeEnum;)V
.end method
