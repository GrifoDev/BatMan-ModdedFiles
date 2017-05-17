.class public Lcom/samsung/android/rlc/receiver/handler/CertHandler;
.super Ljava/lang/Object;
.source "CertHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    return-void
.end method

.method private static getCertBody(Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    new-instance v0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    if-eqz v4, :cond_3

    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Use device id instead of RLC"

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDualSIMDeviceID(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    aget-object v5, v2, v8

    if-eqz v5, :cond_1

    aget-object v5, v2, v8

    invoke-virtual {v0, v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setImei(Ljava/lang/String;)V

    :cond_1
    if-eqz v2, :cond_2

    array-length v5, v2

    if-le v5, v7, :cond_2

    aget-object v5, v2, v7

    if-eqz v5, :cond_2

    aget-object v5, v2, v7

    invoke-virtual {v0, v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setImei2(Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getRLCClientVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setVer(Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setModel(Ljava/lang/String;)V

    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setCsc(Ljava/lang/String;)V

    return-object v0

    :cond_3
    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "There is RLC ID in secure area"

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public encryptData(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .locals 13

    sget-object v10, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "[getEncrytedData]"

    invoke-static {v10, v11}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->getCertBody(Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v1

    const-string/jumbo v10, "https://%s/dm/v1/dev/getCert3"

    invoke-static {p1, v10}, Lcom/samsung/android/rlc/util/PushUtil;->getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v1, v9}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    iget-object v10, p0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    invoke-virtual {v10}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_2

    sget-object v10, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "To receive cert data success"

    invoke-static {v10, v11}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    invoke-virtual {v10}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getCertByte()[B

    move-result-object v0

    const/4 v10, 0x0

    new-array v5, v10, [B

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v10

    invoke-virtual {p2}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getData()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v10, v11, v0}, Lcom/samsung/android/rlc/util/RLCUtil;->encryptData([B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {p2, v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setDataByte([B)V

    iget-object v10, p0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    invoke-virtual {v10}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getImei()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {p1}, Lcom/samsung/android/rlc/util/DeviceUtil;->getTelephonyManagerWithException(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    invoke-static {p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/samsung/android/rlc/util/RLCUtil;->getIMEI(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    array-length v11, v7

    :goto_1
    if-ge v10, v11, :cond_2

    aget-object v6, v7, v10

    iget-object v12, p0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    invoke-virtual {v12}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getImei()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v10, p0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    invoke-virtual {v10}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getImei()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setImei(Ljava/lang/String;)V

    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    invoke-virtual {v11}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getImei()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    invoke-virtual {v12}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getImei()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v10, v11, v0}, Lcom/samsung/android/rlc/util/RLCUtil;->encryptData([B[B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    :goto_2
    invoke-virtual {p2, v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setDataByte([B)V

    return-object p2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    sget-object v10, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception in RMMManager : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "check_backoff"

    const v11, 0x44aa200

    invoke-static {p1, v10, v11}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v10, "spp_backoff"

    const v11, 0x44aa200

    invoke-static {p1, v10, v11}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v10, "gcm_backoff"

    const v11, 0x44aa200

    invoke-static {p1, v10, v11}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v10, "check_backoff"

    const v11, 0x44aa200

    invoke-static {p1, v10, v11}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v10, "spp_backoff"

    const v11, 0x44aa200

    invoke-static {p1, v10, v11}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v10, "gcm_backoff"

    const v11, 0x44aa200

    invoke-static {p1, v10, v11}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    sget-object v10, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception in RMMManager : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_1
    return-object p2

    :cond_2
    const/4 v10, 0x0

    return-object v10
.end method

.method public getResponse()Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    return-object v0
.end method

.method public setResponse(Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->response:Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    return-void
.end method
