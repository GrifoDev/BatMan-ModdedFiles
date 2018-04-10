.class Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryObject;
.super Lorg/json/JSONObject;
.source "AccessoryObject.java"


# static fields
.field public static final TAG_BDADDRESS:Ljava/lang/String; = "accessoryBDAddress"

.field public static final TAG_FUMOACCESSORY:Ljava/lang/String; = "accessoryVO"

.field private static final TAG_HOSTDEVICEINFO:Ljava/lang/String; = "hostDeviceInfo"

.field private static final TAG_MCC:Ljava/lang/String; = "accessoryMCC"

.field private static final TAG_MODELNAME:Ljava/lang/String; = "accessoryModelID"

.field public static final TAG_SERIALNUMBER:Ljava/lang/String; = "accessorySerialNumber"

.field private static final TAG_TMCC:Ljava/lang/String; = "hostDeviceMccByNetwork"

.field private static final TAG_TMNC:Ljava/lang/String; = "hostDeviceMncByNetwork"

.field private static final TAG_TYPECODE:Ljava/lang/String; = "accessoryTypeCode"

.field public static final TAG_UNIQUENUMBER:Ljava/lang/String; = "accessoryUniqueNumber"


# instance fields
.field private mAccInfo:Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;)V
    .locals 5

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryObject;->mAccInfo:Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "accessoryTypeCode"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TWID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "accessorySerialNumber"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->getModelName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->getMCC()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->getHDMCC()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "hostDeviceMccByNetwork"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->getHDMNC()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "hostDeviceMncByNetwork"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "hostDeviceInfo"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "accessoryVO"

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->getModelName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "accessoryModelID"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->getMCC()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "accessoryMCC"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public getAccInfo()Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryObject;->mAccInfo:Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;

    return-object v0
.end method
