.class public Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;
.super Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;
.source "AccessoryClient.java"


# static fields
.field private static final ADD_ACCESSORY_API:Ljava/lang/String; = "/api/v1/accessory"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryObject;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "https://dir-apis.samsungdm.com/api/v1/accessory"

    const-string/jumbo v1, "POST"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "AccessoryClient use official Server"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryObject;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "http://dir-stg-apis.samsungdiroute.net:8080/api/v1/accessory"

    const-string/jumbo v1, "POST"

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "AccessoryClient use Test Server"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAuthorization()Ljava/lang/String;
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/16 v9, 0x3a

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "TWID:"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    sget-object v6, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryUtil;->getServerID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryUtil;->getServerPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryUtil;->convertId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/api/v1/accessory:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->getBody()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->getMD5Digest(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7, v10}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v7

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->getBody()Lorg/json/JSONObject;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryObject;

    invoke-virtual {v6}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryObject;->getAccInfo()Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_0
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->getMD5Digest(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7, v10}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v7

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "consumer_id=\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_1
    const-string/jumbo v6, "\",signature=\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->getMD5Digest(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7, v10}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v7

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "trytoken="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->getToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getAuthorization = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_1
    return-object v11

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_0

    sget-object v6, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "id is invalid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v6, "\",access_token=\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method public getID()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->getBody()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "accessoryVO"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "accessorySerialNumber"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public onError(ILjava/net/HttpURLConnection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v8, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ResponseCode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "NO_CODE"

    const-string/jumbo v3, ""

    const-wide/16 v6, -0x1

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    const-string/jumbo v9, "UTF-8"

    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v8, 0x1

    if-ne v2, v8, :cond_0

    sget-object v8, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Wrong Error Format"

    invoke-static {v8, v9}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    :pswitch_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "code"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    :goto_2
    const-string/jumbo v8, "messsage"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    :goto_3
    const-string/jumbo v8, "retryPeriod"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :pswitch_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "errorVO"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "code:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " message:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " retryPeriod:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onError(ILjavax/net/ssl/HttpsURLConnection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v8, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ResponseCode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "NO_CODE"

    const-string/jumbo v3, ""

    const-wide/16 v6, -0x1

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    const-string/jumbo v9, "UTF-8"

    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v8, 0x1

    if-ne v2, v8, :cond_0

    sget-object v8, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Wrong Error Format"

    invoke-static {v8, v9}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    :pswitch_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "code"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    :goto_2
    const-string/jumbo v8, "messsage"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    :goto_3
    const-string/jumbo v8, "retryPeriod"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :pswitch_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "errorVO"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "code:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " message:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " retryPeriod:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onReponseHeader(Ljava/net/HttpURLConnection;)Z
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "access_token"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->getBody()Lorg/json/JSONObject;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryObject;

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryObject;->getAccInfo()Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->setToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_0
    return v5
.end method

.method public onReponseHeader(Ljavax/net/ssl/HttpsURLConnection;)Z
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "access_token"

    invoke-virtual {p1, v2}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->getBody()Lorg/json/JSONObject;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryObject;

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryObject;->getAccInfo()Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->setToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_0
    return v5
.end method

.method public onResult(Ljava/net/HttpURLConnection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->getBody()Lorg/json/JSONObject;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryObject;

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryObject;->getAccInfo()Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Receive result: success in NetActionRegisterDevice"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->setAccRegistered()V

    const/4 v1, 0x1

    return v1
.end method

.method public onResult(Ljavax/net/ssl/HttpsURLConnection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->getBody()Lorg/json/JSONObject;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryObject;

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryObject;->getAccInfo()Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Receive result: success in NetActionRegisterDevice"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->setAccRegistered()V

    const/4 v1, 0x1

    return v1
.end method

.method public onResultBlock()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->getBody()Lorg/json/JSONObject;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryObject;

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryObject;->getAccInfo()Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryClient;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Receive result: block in NetActionRegisterDevice"

    invoke-static {v1, v2}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->setAccRegistered()V

    return-void
.end method
