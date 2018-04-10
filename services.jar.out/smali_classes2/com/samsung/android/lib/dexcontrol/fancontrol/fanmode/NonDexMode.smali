.class public Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;
.super Ljava/lang/Object;
.source "NonDexMode.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;


# static fields
.field private static final TAG:Ljava/lang/String; = "NonDexMode"


# instance fields
.field private mFanLevelTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;",
            "Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;",
            ">;"
        }
    .end annotation
.end field

.field private mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->mFanLevelTable:Ljava/util/Map;

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;

    return-void
.end method

.method private getFanLevelTable()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;",
            "Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->mFanLevelTable:Ljava/util/Map;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->mFanLevelTable:Ljava/util/Map;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->mFanLevelTable:Ljava/util/Map;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_3:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_2:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_1:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->ZERO:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_1:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_2:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_3:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->mFanLevelTable:Ljava/util/Map;

    if-nez v0, :cond_0

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->mFanLevelTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->mFanLevelTable:Ljava/util/Map;

    goto :goto_0
.end method

.method public getCurrentFanLevel()Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;

    invoke-interface {v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;->getSiopLevel()Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NonDexMode"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->getFanLevelTable()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;

    invoke-interface {v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;->getSiopLevel()Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    return-object v0
.end method

.method public onChangedDexMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;

    invoke-interface {v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;->isExistSystemRequest()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->NoramlMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    invoke-interface {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;->setFanMode(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->SystemRequestMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    invoke-interface {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;->setFanMode(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;)V

    goto :goto_0
.end method

.method public declared-synchronized onChangedFanHoldingRequestCount(I)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public onChangedSystemRequestStatus(Z)V
    .locals 0

    return-void
.end method
