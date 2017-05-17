.class public Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;
.super Ljava/lang/Object;
.source "MgRegistrationHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMgRegistrationBody(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .locals 12

    const/4 v10, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRegistraionID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    if-eqz v4, :cond_2

    const-string/jumbo v9, "GCM"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :try_start_0
    const-string/jumbo v9, "gcm"

    invoke-virtual {v6, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    const-string/jumbo v9, "ver"

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getRLCClientVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v9, "model"

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v9, "csc"

    invoke-static {}, Lcom/samsung/android/rlc/util/DeviceUtil;->getSalesCodeRegion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v8

    :goto_1
    new-instance v5, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    invoke-virtual {v5, v7}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setData(Ljava/lang/String;)V

    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[ REG_ID]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "registPUSH: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[RegisterURL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getMGRegisterURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_1
    const-string/jumbo v9, "SPP"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    :try_start_2
    const-string/jumbo v9, "spp"

    invoke-virtual {v6, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto/16 :goto_1

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto/16 :goto_1

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/security/SignatureException;->printStackTrace()V

    goto/16 :goto_1

    :cond_2
    return-object v10
.end method

.method public static makeMgRegistrationBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "body"

    invoke-static {p0, p1}, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->getMgRegistrationBody(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v1, "pushType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static run(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    sget-object v15, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "MgRegistrationManager run"

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v15, "body"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    const-string/jumbo v15, "pushType"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/PushUtil;->getMGRegisterURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Lcom/samsung/android/rlc/receiver/handler/CertHandler;

    invoke-direct {v3}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;-><init>()V

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v7}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->encryptData(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_0
    if-nez v10, :cond_1

    :try_start_1
    sget-object v15, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "MgRegistrationManager : retry alam set "

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "SPP"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const-string/jumbo v15, "spp_backoff"

    const v16, 0x44aa200

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lcom/samsung/android/rlc/util/PushUtil;->retryMgBackOff(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception v8

    sget-object v15, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "MgRegistrationManager : retry long term alam set, "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lcom/samsung/android/rlc/util/PushUtil;->retryMgBackOff(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_2
    const-string/jumbo v15, "gcm_backoff"

    const v16, 0x44aa200

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v15, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "MgRegistrationManager : retry alam set, "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lcom/samsung/android/rlc/util/PushUtil;->retryMgBackOff(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    :try_start_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    sget-object v15, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "unrecognized push type!! delivery repory ignored!!"

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    move-object/from16 v0, p0

    invoke-static {v0, v10, v13}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v11

    sget-object v16, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v17, "MgRegistrationManager: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v15

    const/16 v16, 0x191

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    sget-object v15, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "MgRegistrationManager: DM_CLIENT_AUTH_FAIL"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string/jumbo v15, "null"

    goto :goto_3

    :cond_4
    invoke-virtual {v11}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v15

    const/16 v16, 0x193

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    invoke-virtual {v11}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getData()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v12

    invoke-virtual {v3}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->getResponse()Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getCertByte()[B

    move-result-object v4

    invoke-virtual {v10}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getData()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v6

    invoke-static {v4}, Lcom/samsung/android/rlc/util/HMACUtil;->generatePublicKey([B)Ljava/security/interfaces/RSAPublicKey;

    invoke-static {v6, v12}, Lcom/samsung/android/rlc/util/HMACUtil;->verify([B[B)Z

    move-result v14

    sget-object v15, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "verify signed Data : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_5

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v15, "clearOp"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v15, 0xc

    move-object/from16 v0, p0

    invoke-static {v0, v5, v15}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    :cond_5
    sget-object v15, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "MgRegistrationManager : not supported device "

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-virtual {v11}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v15

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    const-string/jumbo v15, "SPP"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    const-string/jumbo v15, "retry_13"

    const-string/jumbo v16, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v11}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMgAddr()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v9, v15}, Lcom/samsung/android/rlc/util/PreferencesUtil;->markMGRegistered(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/rlc/util/RLCUtil;->PKG_VER:Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/PushUtil;->getRLCClientVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v15, "retry_12"

    const-string/jumbo v16, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lcom/samsung/android/rlc/util/PushUtil;->retryMgBackOff(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lcom/samsung/android/rlc/util/PushUtil;->retryMgBackOff(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2
.end method
