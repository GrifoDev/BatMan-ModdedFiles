.class public Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;
.super Ljava/lang/Object;
.source "DexFanControlManager.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;
.implements Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;,
        Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;,
        Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;
    }
.end annotation


# static fields
.field private static final MAX_FAN_HOLDING_TIME:I = 0x927c0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentFanLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

.field private mCurrentFanMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

.field private mDexModel:I

.field private mFanHoldingTimerTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;",
            ">;"
        }
    .end annotation
.end field

.field private mFanModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;",
            "Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;",
            ">;"
        }
    .end annotation
.end field

.field private mIDexFanControlListener:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControlListener;

.field private mIsExistSystemRequest:Z

.field private mSiopLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IZLcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControlListener;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mSiopLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mCurrentFanLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mIsExistSystemRequest:Z

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mIDexFanControlListener:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControlListener;

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mDexModel:I

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mCurrentFanMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    iput p4, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mDexModel:I

    invoke-direct {p0, p3}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->setDexFanControlListener(Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControlListener;)V

    invoke-static {p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->fromValue(I)Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mSiopLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getCurrentFanMode()Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;->onChangedDexMode()V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->controlFanLevel()V

    invoke-virtual {p0, p2}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->setSystemRequest(Z)V

    return-void
.end method

.method private cancelFanHoldingTimer()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0
.end method

.method private checkAndUpdateFanHoldingTask(Ljava/lang/String;)V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->getSender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkAndUpdateFanHoldingTask "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->setUpdate(Z)V

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->cancel()Z

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingTimerTaskList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkAndUpdateFanHoldingTask after remove : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingRequestCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private controlFanLevel()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getCurrentFanMode()Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;->getCurrentFanLevel()Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "controlFanLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getCurrentFanMode()Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mCurrentFanLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mIDexFanControlListener:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControlListener;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mIDexFanControlListener:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControlListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControlListener;->onFanLevelChanged(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;)V

    goto :goto_0
.end method

.method private getCurrentFanMode()Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mCurrentFanMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mCurrentFanMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanModeMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->NoramlMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mCurrentFanMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    goto :goto_0
.end method

.method private getFanHoldingRequestCount()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingTimerTaskList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getFanHoldingTimer()Ljava/util/Timer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method private getFanHoldingTimerTaskList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    goto :goto_0
.end method

.method private getFanModeMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;",
            "Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->NonDexMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    new-instance v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;

    invoke-direct {v2, p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NonDexMode;-><init>(Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->NoramlMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    new-instance v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NormalMode;

    iget v3, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mDexModel:I

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/NormalMode;-><init>(Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->FanHoldingMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    new-instance v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;

    iget v3, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mDexModel:I

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/FanHoldingMode;-><init>(Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->SystemRequestMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    new-instance v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;

    iget v3, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mDexModel:I

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;-><init>(Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setDexFanControlListener(Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControlListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mIDexFanControlListener:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControlListener;

    return-void
.end method


# virtual methods
.method public addFanHoldingTimerTask(Ljava/lang/String;I)V
    .locals 4

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addFanHoldingTimerTask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->checkAndUpdateFanHoldingTask(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;-><init>(Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingTimerTaskList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getCurrentFanMode()Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingRequestCount()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;->onChangedFanHoldingRequestCount(I)V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingTimer()Ljava/util/Timer;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->controlFanLevel()V

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addFanHoldingTimerTask currentFanHoldingCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingTimerTaskList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cancelDexFanHoldingTimerTask(Ljava/lang/String;)V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "cancelDexFanHoldingTimerTask enter "

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->getSender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cancelDexFanHoldingTimerTask "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->cancel()Z

    goto :goto_0
.end method

.method public clearAllFanHoldingTimerTask()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingRequestCount()I

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->cancelFanHoldingTimer()V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->clearAllFanHoldingTimerTask()V

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanHoldingTimerTaskList:Ljava/util/List;

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mSiopLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mCurrentFanLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mIDexFanControlListener:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControlListener;

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mCurrentFanMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->NonDexMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    invoke-interface {v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;->destroy()V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->NoramlMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    invoke-interface {v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;->destroy()V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->FanHoldingMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    invoke-interface {v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;->destroy()V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->SystemRequestMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    invoke-interface {v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;->destroy()V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mFanModeMap:Ljava/util/Map;

    goto :goto_0
.end method

.method public getSiopLevel()Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mSiopLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    return-object v0
.end method

.method public isExistSystemRequest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mIsExistSystemRequest:Z

    return v0
.end method

.method public onDexFanLevelUpdated(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDexFanLevelUpdated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mCurrentFanLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mCurrentFanLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->getFanLevel()I

    move-result v0

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received Fan Level("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") is not matched with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mCurrentFanLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->getFanLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " level."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFanHoldingEvent(Ljava/lang/String;I)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p2, :cond_2

    const v0, 0x927c0

    if-gt p2, v0, :cond_3

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getCurrentFanMode()Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanModeMap()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->NoramlMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getCurrentFanMode()Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanModeMap()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->FanHoldingMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->addFanHoldingTimerTask(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->cancelDexFanHoldingTimerTask(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Requested Fan Hoding Time is over the max - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x927c0

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->addFanHoldingTimerTask(Ljava/lang/String;I)V

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->FanHoldingMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    invoke-virtual {p0, v0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->setFanMode(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;)V

    goto :goto_0
.end method

.method public onFinishedFanHoldingTimerTask(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "before remove:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingRequestCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingTimerTaskList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "after remove:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingRequestCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getCurrentFanMode()Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanHoldingRequestCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;->onChangedFanHoldingRequestCount(I)V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->controlFanLevel()V

    return-void
.end method

.method public setFanLevelForTest(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mIDexFanControlListener:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControlListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mIDexFanControlListener:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControlListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControlListener;->onFanLevelChanged(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;)V

    goto :goto_0
.end method

.method public setFanMode(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFanMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getFanModeMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mCurrentFanMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    return-void
.end method

.method public setSiopLevel(I)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->fromValue(I)Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mSiopLevel:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->controlFanLevel()V

    return-void
.end method

.method public setSystemRequest(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSystemRequest : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mIsExistSystemRequest:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mIsExistSystemRequest:Z

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->getCurrentFanMode()Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->mIsExistSystemRequest:Z

    invoke-interface {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;->onChangedSystemRequestStatus(Z)V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;->controlFanLevel()V

    goto :goto_0
.end method
