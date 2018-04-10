.class public Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;
.super Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;
.source "DexStation.java"


# static fields
.field private static final DEX_STATION_FAKE:I = 0x5210

.field private static final TAG:Ljava/lang/String;

.field private static final mFanLevelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEth0Receiver:Landroid/content/BroadcastReceiver;

.field private final mIResponseListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener",
            "<",
            "Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$1;

    invoke-direct {v0}, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$1;-><init>()V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->mFanLevelMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x1

    const v2, 0xa020

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;-><init>(Landroid/content/Context;ZI)V

    new-instance v1, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$2;-><init>(Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;)V

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->mIResponseListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;

    new-instance v1, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation$3;-><init>(Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;)V

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->mEth0Receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->setMessageSender(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->creatFanControl()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "samsung.net.ethernet.ETH_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->mEth0Receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getFanControlBytes(I)[B
    .locals 4

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFanControlBytes : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v0, v1, [B

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->mFanLevelMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->destroy()V

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFanControlResult(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->getFanLevel()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->getFanControlBytes(I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    invoke-interface {v1, v0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;->send([B)V

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->getFanLevel()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->getFanLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1FAN"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendMsgDirect([B)V
    .locals 3

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMsgDirect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/lib/dexcontrol/utils/Util;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    invoke-interface {v0, p1}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;->send([B)V

    goto :goto_0
.end method

.method protected setMessageSender(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    if-nez v0, :cond_0

    :goto_0
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;

    const v1, 0xa020

    invoke-direct {v0, v1}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmShortTypeSender;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->mIResponseListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;->setResponseListener(Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    invoke-interface {v0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;->destroy()V

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    goto :goto_0
.end method

.method protected unregisterReceiver()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->unregisterReceiver()V

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterReceiver"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->mEth0Receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected usbDeviceChanged(ILjava/lang/String;)V
    .locals 2

    const v0, 0xa020

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x5210

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "1USB"

    invoke-static {v0, v1, p2}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
