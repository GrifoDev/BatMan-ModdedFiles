.class public Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;
.super Ljava/lang/Object;
.source "AccessoryInfo.java"


# static fields
.field private static final REG_STATE_CANCELED:I = 0x2

.field private static final REG_STATE_REGISTERED:I = 0x1

.field private static final REG_STATE_REGISTERING:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_DEX:Ljava/lang/String; = "SAMSUNG DEX"


# instance fields
.field private mBTAddress:Ljava/lang/String;

.field private mHostDeviceMCC:Ljava/lang/String;

.field private mHostDeviceMNC:Ljava/lang/String;

.field private mMCC:Ljava/lang/String;

.field private mModelName:Ljava/lang/String;

.field private mRegistration:I

.field private mSerialNumber:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mRegistration:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mType:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mSerialNumber:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mBTAddress:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mModelName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mMCC:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mHostDeviceMCC:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mHostDeviceMNC:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBTAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mBTAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getHDMCC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mHostDeviceMCC:Ljava/lang/String;

    return-object v0
.end method

.method public getHDMNC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mHostDeviceMNC:Ljava/lang/String;

    return-object v0
.end method

.method public getMCC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mMCC:Ljava/lang/String;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mModelName:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mRegistration:I

    return v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public isAccRegistering()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mRegistration:I

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isVaild()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mSerialNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAccCanceled()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mRegistration:I

    return-void
.end method

.method public setAccRegistered()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mRegistration:I

    return-void
.end method

.method public setAccRegistering()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mRegistration:I

    return-void
.end method

.method public setBTAddress(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mBTAddress:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mBTAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHDMCC(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mHostDeviceMCC:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mHostDeviceMCC:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHDMNC(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mHostDeviceMNC:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mHostDeviceMNC:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMCC(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mMCC:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mMCC:Ljava/lang/String;

    goto :goto_0
.end method

.method public setModelName(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mModelName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mModelName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setRegistrationStatus(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mRegistration:I

    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mSerialNumber:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mSerialNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mToken:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryInfo;->mType:Ljava/lang/String;

    return-void

    :cond_0
    return-void
.end method
