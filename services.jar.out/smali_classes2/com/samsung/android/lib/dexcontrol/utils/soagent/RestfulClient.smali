.class public abstract Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;
.super Ljava/lang/Object;
.source "RestfulClient.java"


# static fields
.field public static final RESPONSE_FAIL:I = 0x2

.field public static final RESPONSE_RETRY:I = 0x3

.field public static final RESPONSE_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBody:Lorg/json/JSONObject;

.field private mMethod:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->mMethod:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->mBody:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected dumpError(Ljava/net/HttpURLConnection;)V
    .locals 8

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v5, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected dumpHeader(Ljava/net/HttpURLConnection;)V
    .locals 8

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected dumpResponse(Ljava/net/HttpURLConnection;)V
    .locals 10

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    const-string/jumbo v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v7, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_2

    move-object v4, v5

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v4, v5

    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    move-object v4, v5

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v1

    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_0

    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_5
    if-nez v4, :cond_3

    :goto_6
    throw v0

    :cond_3
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v4, v5

    goto :goto_5

    :catch_6
    move-exception v1

    move-object v4, v5

    goto :goto_4

    :catch_7
    move-exception v2

    goto :goto_2
.end method

.method public execute(Z)I
    .locals 15

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v9, v0

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getMethod()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string/jumbo v12, "Content-Type"

    const-string/jumbo v13, "application/json"

    invoke-virtual {v9, v12, v13}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v12, "Accept"

    const-string/jumbo v13, "application/xml"

    invoke-virtual {v9, v12, v13}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getAuthorization()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "Authorization"

    invoke-virtual {v9, v13, v12}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x7530

    invoke-virtual {v9, v12}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const/16 v12, 0x7530

    invoke-virtual {v9, v12}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    :goto_0
    new-instance v11, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/OutputStreamWriter;

    const-string/jumbo v13, "UTF-8"

    invoke-direct {v12, v6, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getBody()Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V

    if-nez p1, :cond_1

    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v7

    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "responseCode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0xc8

    if-eq v7, v12, :cond_11

    const/16 v12, 0x193

    if-eq v7, v12, :cond_15

    const/16 v12, 0x191

    if-eq v7, v12, :cond_18

    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "response Fail. responseCode is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getBody()Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onReponseHeader(Ljavax/net/ssl/HttpsURLConnection;)Z

    move-result v12

    if-eqz v12, :cond_1c

    :goto_1
    invoke-virtual {p0, v7, v9}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onError(ILjavax/net/ssl/HttpsURLConnection;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-nez v9, :cond_1d

    :goto_2
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "urlConnection.disconnect()"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_1e

    :goto_3
    const/4 v12, 0x2

    return v12

    :cond_0
    :try_start_1
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getMethod()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string/jumbo v12, "Content-Type"

    const-string/jumbo v13, "application/json"

    invoke-virtual {v10, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v12, "Accept"

    const-string/jumbo v13, "application/xml"

    invoke-virtual {v10, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getAuthorization()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "Authorization"

    invoke-virtual {v10, v13, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x7530

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v12, 0x7530

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "responseCode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0xc8

    if-eq v7, v12, :cond_2

    const/16 v12, 0x193

    if-eq v7, v12, :cond_7

    const/16 v12, 0x191

    if-eq v7, v12, :cond_a

    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "response Fail. responseCode is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getBody()Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onReponseHeader(Ljava/net/HttpURLConnection;)Z

    move-result v12

    if-eqz v12, :cond_e

    :goto_4
    invoke-virtual {p0, v7, v10}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onError(ILjava/net/HttpURLConnection;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x2

    if-nez v9, :cond_f

    :goto_5
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "urlConnection.disconnect()"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_10

    :goto_6
    const/4 v12, 0x2

    return v12

    :cond_2
    :try_start_2
    invoke-virtual {p0, v10}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onReponseHeader(Ljava/net/HttpURLConnection;)Z

    move-result v12

    if-eqz v12, :cond_3

    :goto_7
    invoke-virtual {p0, v10}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onResult(Ljava/net/HttpURLConnection;)Z

    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getBody()Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x1

    if-nez v9, :cond_5

    :goto_8
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "urlConnection.disconnect()"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_6

    :goto_9
    const/4 v12, 0x1

    return v12

    :cond_3
    :try_start_3
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Header Fail, But response OK."

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :catch_0
    move-exception v4

    :try_start_4
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v9, :cond_1f

    :goto_a
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "urlConnection.disconnect()"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_20

    :cond_4
    :goto_b
    const/4 v12, 0x2

    return v12

    :cond_5
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_8

    :cond_6
    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_9

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :cond_7
    :try_start_6
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onResultBlock()V

    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getBody()Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v2, 0x2

    if-nez v9, :cond_8

    :goto_c
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "urlConnection.disconnect()"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_9

    :goto_d
    const/4 v12, 0x2

    return v12

    :cond_8
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_c

    :cond_9
    :try_start_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_d

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    :cond_a
    :try_start_8
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Get TOKEN from first HTTP_UNAUTHORIZED"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onReponseHeader(Ljava/net/HttpURLConnection;)Z
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v12

    if-eqz v12, :cond_b

    :goto_e
    const/4 v2, 0x3

    if-nez v9, :cond_c

    :goto_f
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "urlConnection.disconnect()"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_d

    :goto_10
    const/4 v12, 0x3

    return v12

    :cond_b
    :try_start_9
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "No TOKEN!"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_e

    :catch_3
    move-exception v3

    :try_start_a
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v9, :cond_21

    :goto_11
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "urlConnection.disconnect()"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_4

    :try_start_b
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_b

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :cond_c
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_f

    :cond_d
    :try_start_c
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_10

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    :cond_e
    :try_start_d
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Header Fail"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_4

    :catch_6
    move-exception v5

    :try_start_e
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-nez v9, :cond_22

    :goto_12
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "urlConnection.disconnect()"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_4

    :try_start_f
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_b

    :catch_7
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b

    :cond_f
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_5

    :cond_10
    :try_start_10
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_6

    :catch_8
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    :cond_11
    :try_start_11
    invoke-virtual {p0, v9}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onReponseHeader(Ljavax/net/ssl/HttpsURLConnection;)Z

    move-result v12

    if-eqz v12, :cond_12

    :goto_13
    invoke-virtual {p0, v9}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onResult(Ljavax/net/ssl/HttpsURLConnection;)Z

    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getBody()Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    const/4 v2, 0x1

    if-nez v9, :cond_13

    :goto_14
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "urlConnection.disconnect()"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_14

    :goto_15
    const/4 v12, 0x1

    return v12

    :cond_12
    :try_start_12
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Header Fail, But response OK."

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_13

    :catchall_0
    move-exception v1

    if-nez v9, :cond_23

    :goto_16
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "urlConnection.disconnect()"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_24

    :goto_17
    throw v1

    :cond_13
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_14

    :cond_14
    :try_start_13
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    goto :goto_15

    :catch_9
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    :cond_15
    :try_start_14
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onResultBlock()V

    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getBody()Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/net/MalformedURLException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    const/4 v2, 0x2

    if-nez v9, :cond_16

    :goto_18
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "urlConnection.disconnect()"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_17

    :goto_19
    const/4 v12, 0x2

    return v12

    :cond_16
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_18

    :cond_17
    :try_start_15
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    goto :goto_19

    :catch_a
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    :cond_18
    :try_start_16
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Get TOKEN from first HTTP_UNAUTHORIZED"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onReponseHeader(Ljavax/net/ssl/HttpsURLConnection;)Z
    :try_end_16
    .catch Ljava/net/MalformedURLException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    move-result v12

    if-eqz v12, :cond_19

    :goto_1a
    const/4 v2, 0x3

    if-nez v9, :cond_1a

    :goto_1b
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "urlConnection.disconnect()"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_1b

    :goto_1c
    const/4 v12, 0x3

    return v12

    :cond_19
    :try_start_17
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "No TOKEN!"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/net/MalformedURLException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_1a

    :cond_1a
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_1b

    :cond_1b
    :try_start_18
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_b

    goto :goto_1c

    :catch_b
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c

    :cond_1c
    :try_start_19
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Header Fail"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/net/MalformedURLException; {:try_start_19 .. :try_end_19} :catch_0
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto/16 :goto_1

    :cond_1d
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_2

    :cond_1e
    :try_start_1a
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_c

    goto/16 :goto_3

    :catch_c
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :cond_1f
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_a

    :cond_20
    :try_start_1b
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_d

    goto/16 :goto_b

    :catch_d
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b

    :cond_21
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_11

    :cond_22
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_12

    :cond_23
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_16

    :cond_24
    :try_start_1c
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_e

    goto/16 :goto_17

    :catch_e
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_17
.end method

.method public abstract getAuthorization()Ljava/lang/String;
.end method

.method public getBody()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->mBody:Lorg/json/JSONObject;

    return-object v0
.end method

.method public abstract getID()Ljava/lang/String;
.end method

.method public getMD5Digest(Ljava/lang/String;)[B
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string/jumbo v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 v3, 0x0

    return-object v3
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public abstract onError(ILjava/net/HttpURLConnection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onError(ILjavax/net/ssl/HttpsURLConnection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public onReponseHeader(Ljava/net/HttpURLConnection;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onReponseHeader(Ljavax/net/ssl/HttpsURLConnection;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onResult(Ljava/net/HttpURLConnection;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onResult(Ljavax/net/ssl/HttpsURLConnection;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public onResultBlock()V
    .locals 0

    return-void
.end method
