.class public interface abstract Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;
.super Ljava/lang/Object;
.source "IDexFanModeControl.java"


# virtual methods
.method public abstract addFanHoldingTimerTask(Ljava/lang/String;I)V
.end method

.method public abstract clearAllFanHoldingTimerTask()V
.end method

.method public abstract getSiopLevel()Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;
.end method

.method public abstract isExistSystemRequest()Z
.end method

.method public abstract onFinishedFanHoldingTimerTask(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;)V
.end method

.method public abstract setFanMode(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;)V
.end method
