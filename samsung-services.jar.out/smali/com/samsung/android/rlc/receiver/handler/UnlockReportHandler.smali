.class public Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;
.super Ljava/lang/Object;
.source "UnlockReportHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getUnlockReportBody(Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .locals 10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v0, v5}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v4}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    invoke-virtual {v4, v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setData(Ljava/lang/String;)V

    return-object v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/security/SignatureException;->printStackTrace()V

    goto :goto_0
.end method

.method public static makeUnlockReportBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "body"

    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->getUnlockReportBody(Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method

.method public static run(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/16 v10, 0x11

    sget-object v7, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "UnlockReportManager run"

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v7, "body"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    new-instance v1, Lcom/samsung/android/rlc/receiver/handler/CertHandler;

    invoke-direct {v1}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;-><init>()V

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->encryptData(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const/16 v8, 0x11

    invoke-static {p0, v7, v8}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    :cond_0
    const-string/jumbo v7, "https://%s/dm/v1/dev/unlocked"

    invoke-static {p0, v7}, Lcom/samsung/android/rlc/util/PushUtil;->getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v4, v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_1

    sget-object v7, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "UnlockReportManager - success "

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "retry_17"

    const-string/jumbo v8, ""

    invoke-static {p0, v7, v8}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const/16 v8, 0x11

    invoke-static {p0, v7, v8}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v7, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {p0, v7, v10}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    goto :goto_0
.end method
