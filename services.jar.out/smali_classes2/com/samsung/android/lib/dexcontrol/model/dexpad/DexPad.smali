.class public Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;
.super Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;
.source "DexPad.java"


# static fields
.field private static final CHARGER_TYPE_AFC:I = 0x5

.field private static final CHARGER_TYPE_PD:I = 0x1

.field private static final DELAY_REQUEST_TO_SEND:I = 0x0

.field private static final DELAY_RESPONSE_RETRY:I = 0x12c

.field private static final DELAY_RESPONSE_SELLOUT_DATA:I = 0x3a98

.field private static final HANDLE_REQUEST_CURRENT_FAN_LEVEL:I = 0x5

.field private static final HANDLE_REQUEST_FAN_CONTROL:I = 0x4

.field private static final HANDLE_REQUEST_FAST_CHARGING_MODE:I = 0x3

.field private static final HANDLE_REQUEST_SELLOUT_DATA:I = 0x6

.field private static final HANDLE_REQUEST_TA_INFO:I = 0x2

.field private static final HANDLE_RESPONSE_ONFAIL:I = 0x1

.field private static final HANDLE_RESPONSE_ONSUCCESS:I = 0x0

.field private static final IN_MESSAGE_DELAY_TO_PREVENT_PD_HW_RESET:I = 0x2bc

.field private static final MAX_FAN_RETRY:I = 0x3

.field private static final MAX_FAST_CHARGING_RETRY:I = 0x3

.field private static final MIN_LENGTH_FOR_IN_MESSAGE:I = 0x3

.field private static final ModelID:Ljava/lang/String; = "EE-M5100"

.field private static final NAK_RESPONSE_RETRY_MAX:I = 0x32

.field private static final PRODUCT_ID_DEX_PAD_BILLBOARD_BOOTLOAD:I = 0xf645

.field private static final PRODUCT_ID_DEX_PAD_I2C:I = 0xf650

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private DexUNNumber:Ljava/lang/String;

.field private isAlreadySentDSVersionInfo:Z

.field private final mCallback:Lcom/samsung/android/lib/dexcontrol/utils/soagent/ISOAgentServiceUtil$ISOAgentServiceUtilCallback;

.field private mCharger_Power_Value:I

.field private mCharger_Type_Value:I

.field private mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

.field private mCurrentFanLevel:I

.field private mDexBinaryDownloading:Z

.field private mFanLevel4Gsim:I

.field private mFanRetryCnt:I

.field private mFastChargingRetryCnt:I

.field private mFastChargingStatus:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

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

.field private mInternalHandler:Landroid/os/Handler;

.field private mIsFastChargingEnabled:Z

.field private mPreFanLevel4Gsim:I

.field private reTryPowerChargerInfoRequestCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;)V
    .locals 3

    const/16 v2, -0x3e7

    const/4 v1, 0x0

    const v0, 0xa029

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;-><init>(Landroid/content/Context;ZI)V

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$1;-><init>(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCallback:Lcom/samsung/android/lib/dexcontrol/utils/soagent/ISOAgentServiceUtil$ISOAgentServiceUtilCallback;

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Power_Value:I

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Type_Value:I

    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mIsFastChargingEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->isAlreadySentDSVersionInfo:Z

    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mDexBinaryDownloading:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanLevel4Gsim:I

    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mPreFanLevel4Gsim:I

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCurrentFanLevel:I

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanRetryCnt:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->reTryPowerChargerInfoRequestCount:I

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;-><init>(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mIResponseListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;

    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFastChargingStatus:Z

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFastChargingRetryCnt:I

    iput-object p2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->initHandler()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->setMessageSender(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->creatFanControl()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mInternalHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->handleResponseResult([B)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->handleOnFailResult([B)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFastChargingStatus:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCurrentFanLevel:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->controlDexFanLevel(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->requestCurrentFanLevelUpdate()V

    return-void
.end method

.method private controlDexFanLevel(I)V
    .locals 4

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "controlDexFanLevel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mMessageSender null"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x7

    invoke-direct {p0, v1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->notifyFailedError(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPadMessage;->getBytes(BBI)[B

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    const/16 v2, 0x2bc

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;->send([BI)V

    goto :goto_0
.end method

.method private createMessageSender()V
    .locals 3

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createMessageSender : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;

    const v1, 0xa029

    invoke-direct {v0, v1}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmLongTypeSender;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;->setInMsgMinLength(I)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mIResponseListener:Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;->setResponseListener(Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;)V

    goto :goto_0
.end method

.method private destroyMessageSender()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "destroyMessageSender : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    invoke-interface {v0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;->destroy()V

    iput-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    goto :goto_0
.end method

.method private handleBigDataResponse([B)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    aget-byte v5, p1, v9

    sparse-switch v5, :sswitch_data_0

    sget-object v5, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "handleBigDataResponse - Not in Case"

    invoke-static {v5, v6}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    aget-byte v5, p1, v10

    if-eqz v5, :cond_2

    sget-object v5, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleBigDataResponse - COMMAND_CHARGER_TYPE_RESPONSE NAK : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, p1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    aget-byte v5, p1, v8

    const/16 v6, -0x10

    if-eq v5, v6, :cond_3

    :goto_1
    iget-boolean v5, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->isAlreadySentDSVersionInfo:Z

    if-nez v5, :cond_0

    array-length v5, p1

    const/16 v6, 0xa

    if-ne v5, v6, :cond_5

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    if-eqz v5, :cond_0

    array-length v5, p1

    add-int/lit8 v5, v5, -0x3

    array-length v6, p1

    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/utils/Util;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "0000"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :goto_2
    sget-object v5, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update ds verison - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    invoke-interface {v5, v1}, Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;->onDSVersionUpdated(Ljava/lang/String;)V

    iput-boolean v9, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->isAlreadySentDSVersionInfo:Z

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/lib/dexcontrol/utils/ContextUtil;->getAgreement(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x6

    const/16 v6, 0x3a98

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->sendRequestToHandler(II)V

    goto/16 :goto_0

    :cond_2
    sget-object v5, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "handleBigDataResponse - COMMAND_CHARGER_TYPE_RESPONSE ACK"

    invoke-static {v5, v6}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->handleChargerTypeResponse([B)V

    iput v9, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->reTryPowerChargerInfoRequestCount:I

    goto :goto_1

    :cond_3
    iget v5, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->reTryPowerChargerInfoRequestCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->reTryPowerChargerInfoRequestCount:I

    const/16 v6, 0x32

    if-lt v5, v6, :cond_4

    iput v9, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->reTryPowerChargerInfoRequestCount:I

    const/4 v5, -0x5

    invoke-direct {p0, v5}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->notifyFailedError(I)V

    goto/16 :goto_1

    :cond_4
    const/16 v5, 0x12c

    invoke-direct {p0, v10, v5}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->sendRequestToHandler(II)V

    return-void

    :cond_5
    array-length v5, p1

    const/16 v6, 0xb

    if-eq v5, v6, :cond_1

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :sswitch_1
    aget-byte v5, p1, v10

    if-eqz v5, :cond_7

    sget-object v5, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleBigDataResponse - COMMAND_UN_NUMBER_RESPONSE NAK : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, p1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    array-length v5, p1

    invoke-static {p1, v8, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->DexUNNumber:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleBigDataResponse - COMMAND_UN_NUMBER_RESPONSE ACK : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->DexUNNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->DexUNNumber:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->sendSellOutCount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    sget-object v5, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "un convert error"

    invoke-static {v5, v6}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleChargerTypeResponse([B)V
    .locals 7

    const/16 v6, 0xf

    const/16 v5, 0xa

    const/4 v3, 0x4

    const/4 v4, 0x0

    iput v4, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Power_Value:I

    iput v4, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Type_Value:I

    const/4 v1, 0x0

    array-length v2, p1

    if-gt v2, v3, :cond_1

    :cond_0
    sget-object v2, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "handleChargerTypeResponse - TA Not Exist"

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object v2, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleChargerType -  Power : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Power_Value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  Type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Type_Value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  FastCharging Support : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    if-nez v2, :cond_8

    :goto_1
    return-void

    :cond_1
    array-length v2, p1

    if-eq v2, v5, :cond_0

    aget-byte v2, p1, v3

    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Power_Value:I

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Type_Value:I

    const/4 v0, 0x0

    iget v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Power_Value:I

    if-le v2, v5, :cond_2

    iget v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Power_Value:I

    if-le v2, v6, :cond_3

    iget v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Power_Value:I

    const/16 v3, 0x18

    if-le v2, v3, :cond_4

    iget v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Power_Value:I

    const/16 v3, 0x64

    if-le v2, v3, :cond_5

    :goto_2
    iget v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Type_Value:I

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mTATypeMap:Ljava/util/HashMap;

    iget v5, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Type_Value:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "2TAT"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Type_Value:I

    sparse-switch v2, :sswitch_data_0

    const/4 v1, 0x1

    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->sendFanControlCheckChargerFastCharging()V

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "1"

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "2"

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "3"

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "4"

    goto :goto_2

    :cond_6
    iput v4, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Power_Value:I

    goto/16 :goto_0

    :sswitch_0
    iget v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Power_Value:I

    if-ge v2, v6, :cond_7

    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x2

    goto :goto_3

    :sswitch_1
    const/4 v1, 0x2

    goto :goto_3

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    iget v3, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Type_Value:I

    iget v4, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Power_Value:I

    invoke-interface {v2, v3, v4, v1}, Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;->onConnectedPowerChargerInfoUpdated(III)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleChargingControlResponse([B)V
    .locals 5

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v4, 0x3

    const/4 v1, 0x0

    aget-byte v2, p1, v0

    sparse-switch v2, :sswitch_data_0

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Not in Case"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    aget-byte v2, p1, v3

    if-eqz v2, :cond_1

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "COMMAND_CHARGING_CONTROL_RESPONSE NAK : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    aget-byte v0, p1, v4

    const/16 v2, -0x10

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFastChargingRetryCnt:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFastChargingRetryCnt:I

    if-lt v0, v4, :cond_5

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFastChargingRetryCnt:I

    const/4 v0, -0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->notifyFailedError(I)V

    goto :goto_0

    :cond_1
    array-length v2, p1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_3

    aget-byte v2, p1, v4

    if-nez v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mIsFastChargingEnabled:Z

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "COMMAND_CHARGING_CONTROL_RESPONSE ACK - enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mIsFastChargingEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    if-nez v0, :cond_4

    :goto_1
    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFastChargingRetryCnt:I

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "COMMAND_CHARGING_CONTROL_RESPONSE ACK"

    invoke-static {v0, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->requestChargingModeUpdate()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    iget-boolean v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mIsFastChargingEnabled:Z

    invoke-interface {v0, v2}, Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;->onChargingModeUpdated(Z)V

    goto :goto_1

    :cond_5
    const/16 v0, 0x12c

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->sendRequestToHandler(II)V

    goto :goto_0

    :sswitch_1
    aget-byte v2, p1, v3

    if-eqz v2, :cond_6

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "COMMAND_CURRENT_CHARGING_MODE_REPONSE NAK : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    sget-object v2, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "COMMAND_CURRENT_CHARGING_MODE_REPONSE ACK"

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-byte v2, p1, v4

    if-nez v2, :cond_7

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mIsFastChargingEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    iget-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mIsFastChargingEnabled:Z

    invoke-interface {v0, v1}, Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;->onChargingModeUpdated(Z)V

    goto/16 :goto_0

    :cond_7
    move v1, v0

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleFanControlResponse([B)V
    .locals 6

    const/4 v5, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    sparse-switch v1, :sswitch_data_0

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "handleFanControlResponse - Not in Case"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    aget-byte v1, p1, v2

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "COMMAND_CURRENT_FAN_STATUS_RESPONSE NAK : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "COMMAND_CURRENT_FAN_STATUS_RESPONSE ACK"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-byte v0, p1, v4

    invoke-virtual {p0, v0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->updateResponsedFanLevel(I)V

    goto :goto_0

    :sswitch_1
    aget-byte v1, p1, v2

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "COMMAND_FAN_CONTROL_RESPONSE NAK : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    aget-byte v1, p1, v4

    const/16 v2, -0xf

    if-ne v1, v2, :cond_5

    :cond_2
    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERROR_SYSTEM_FAULT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanRetryCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanRetryCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanRetryCnt:I

    if-lt v1, v4, :cond_6

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanRetryCnt:I

    if-ne v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "2ERR"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, -0x6

    invoke-direct {p0, v1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->notifyFailedError(I)V

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanRetryCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanRetryCnt:I

    goto/16 :goto_0

    :cond_3
    iput v3, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanRetryCnt:I

    array-length v1, p1

    if-lt v1, v5, :cond_4

    aget-byte v0, p1, v4

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "COMMAND_FAN_CONTROL_RESPONSE ACK - level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->updateResponsedFanLevel(I)V

    goto/16 :goto_0

    :cond_4
    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "COMMAND_FAN_CONTROL_RESPONSE ACK"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->sendRequestToHandler(II)V

    goto/16 :goto_0

    :cond_5
    aget-byte v1, p1, v4

    const/16 v2, -0x10

    if-eq v1, v2, :cond_2

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x12c

    invoke-direct {p0, v5, v1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->sendRequestToHandler(II)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleOnFailResult([B)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleOnFailResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/lib/dexcontrol/utils/Util;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p1

    if-le v0, v3, :cond_0

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Not in Case"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "message is wrong format : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/lib/dexcontrol/utils/Util;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_0
    aget-byte v0, p1, v3

    sparse-switch v0, :sswitch_data_1

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "TYPE_CHARGING_CONTROL - Not in Case"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "TYPE_CHARGING_CONTROL - COMMAND_CHARGING_CONTROL_REQUEST"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->notifyFailedError(I)V

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "TYPE_CHARGING_CONTROL - COMMAND_CURRENT_CHARGING_MODE_REQUEST"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->notifyFailedError(I)V

    goto :goto_0

    :sswitch_3
    aget-byte v0, p1, v3

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "TYPE_CHARGING_CONTROL - Not in Case"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "TYPE_CHARGING_CONTROL - COMMAND_CHARGER_TYPE_REQUEST"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->notifyFailedError(I)V

    goto :goto_0

    :sswitch_4
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "TYPE_FAN_CONTROL"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x50 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method private handleResponseResult([B)V
    .locals 2

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleResponseResult - Not in Case"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->handleChargingControlResponse([B)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->handleBigDataResponse([B)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->handleFanControlResponse([B)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method private initHandler()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mInternalHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$3;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$3;-><init>(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mInternalHandler:Landroid/os/Handler;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mInternalHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mInternalHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private notifyFailedError(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyFailedError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;->onError(I)V

    goto :goto_0
.end method

.method private removeMessagesInHandler()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mInternalHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mInternalHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private requestCurrentFanLevelUpdate()V
    .locals 4

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "requestCurrentFanLevelUpdate"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanLevel4Gsim:I

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    if-nez v1, :cond_2

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mMessageSender null"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x7

    invoke-direct {p0, v1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->notifyFailedError(I)V

    :goto_1
    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanLevel4Gsim:I

    iget v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mPreFanLevel4Gsim:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanLevel4Gsim:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "2FAN"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanLevel4Gsim:I

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mPreFanLevel4Gsim:I

    const/16 v1, -0x3e7

    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanLevel4Gsim:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPadMessage;->getBytes(BB)[B

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    invoke-interface {v1, v0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;->send([B)V

    goto :goto_1
.end method

.method private sendFanControlCheckChargerFastCharging()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendFanControlCheckChargerFastCharging - type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Type_Value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  power : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Power_Value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  fastcharging : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mIsFastChargingEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Type_Value:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCharger_Power_Value:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mIsFastChargingEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->sendRequestToHandler(II)V

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCurrentFanLevel:I

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanLevel4Gsim:I

    goto :goto_0
.end method

.method private sendRequestToHandler(II)V
    .locals 4

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRequestToHandler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mInternalHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Handler is null"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mInternalHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mInternalHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mInternalHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method

.method private sendSellOutCount(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;->getSOTaskRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "EE-M5100"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCallback:Lcom/samsung/android/lib/dexcontrol/utils/soagent/ISOAgentServiceUtil$ISOAgentServiceUtilCallback;

    invoke-static {v1, v0, v2}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/SOAgentServiceUtil;->checkSellOutInfoUpdate(Landroid/content/Context;[Ljava/lang/String;Lcom/samsung/android/lib/dexcontrol/utils/soagent/ISOAgentServiceUtil$ISOAgentServiceUtilCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 5

    const/16 v4, -0x3e7

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->destroy()V

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "destroy"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->removeMessagesInHandler()V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    :goto_0
    iput-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mInternalHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mControlResponseListener:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;

    iput v4, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFanLevel4Gsim:I

    iput v4, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mPreFanLevel4Gsim:I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public onFanControlResult(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->getFanLevel()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mCurrentFanLevel:I

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->sendFanControlCheckChargerFastCharging()V

    return-void
.end method

.method public requestChargingModeUpdate()V
    .locals 3

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "requestChargingModeUpdate"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mMessageSender null"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x7

    invoke-direct {p0, v1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->notifyFailedError(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x3

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPadMessage;->getBytes(BB)[B

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    invoke-interface {v1, v0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;->send([B)V

    goto :goto_0
.end method

.method public requestConnectedPowerChargerInfoUpdate()V
    .locals 3

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "requestConnectedPowerChargerInfoUpdate"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mMessageSender null"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x7

    invoke-direct {p0, v1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->notifyFailedError(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, -0x50

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPadMessage;->getBytes(BB)[B

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    invoke-interface {v1, v0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;->send([B)V

    goto :goto_0
.end method

.method public requestUniqueNumber()V
    .locals 3

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "requestUniqueNumber"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mMessageSender null"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x7

    invoke-direct {p0, v1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->notifyFailedError(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, -0x50

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPadMessage;->getBytes(BB)[B

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    invoke-interface {v1, v0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;->send([B)V

    goto :goto_0
.end method

.method public setFastChargingEnable(Z)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v3, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setFastChargingEnable - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mFastChargingStatus:Z

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    if-nez v3, :cond_0

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mMessageSender null"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x7

    invoke-direct {p0, v1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->notifyFailedError(I)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    :goto_1
    const/4 v3, 0x3

    invoke-static {v3, v2, v1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPadMessage;->getBytes(BBI)[B

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mMessageSender:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;

    const/16 v2, 0x2bc

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/IUvdmSender;->send([BI)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected setMessageSender(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->destroyMessageSender()V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->createMessageSender()V

    return-void
.end method

.method protected unregisterReceiver()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->unregisterReceiver()V

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterReceiver"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateDexBinaryDownloadingState(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mDexBinaryDownloading:Z

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DexBinaryDownloading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mDexBinaryDownloading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->mDexBinaryDownloading:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->createMessageSender()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->removeMessagesInHandler()V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->destroyMessageSender()V

    goto :goto_0
.end method

.method protected updateResponsedFanLevel(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->updateResponsedFanLevel(I)V

    return-void
.end method

.method protected usbDeviceChanged(ILjava/lang/String;)V
    .locals 2

    const v0, 0xa029

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0xf650

    if-eq p1, v0, :cond_0

    const v0, 0xf645

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "2USB"

    invoke-static {v0, v1, p2}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
