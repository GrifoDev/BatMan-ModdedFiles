.class public Lcom/whitepages/nameid/NameIDHelper;
.super Ljava/lang/Object;
.source "NameIDHelper.java"


# static fields
.field private static final DBG:Z

.field public static final HIYA_AEGIS_DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.att.callprotect"

.field public static final HIYA_AEGIS_LOOKUP_SERVICE_COMPONENT_NAME_FORMAT:Ljava/lang/String; = "%s/com.hiya.aegis.service.LookupServiceImpl"

.field public static final NAME_ID_CNAM_KEY:Ljava/lang/String; = "NAME_ID_CNAM_KEY"

.field public static final NAME_ID_CNAM_NOT_AVAILABLE_VALUE:Ljava/lang/String; = "cnam_not_available"

.field public static final NAME_ID_COMMUNICATION_TYPE_INCOMING_CALL:Ljava/lang/String; = "incall"

.field public static final NAME_ID_COMMUNICATION_TYPE_INCOMING_TEXT:Ljava/lang/String; = "intext"

.field public static final NAME_ID_COMMUNICATION_TYPE_OUTGOING_CALL:Ljava/lang/String; = "outcall"

.field public static final NAME_ID_COMMUNICATION_TYPE_OUTGOING_TEXT:Ljava/lang/String; = "outtext"

.field public static final NAME_ID_COMUNICATION_TYPE_KEY:Ljava/lang/String; = "NAME_ID_COMUNICATION_TYPE_KEY"

.field public static final NAME_ID_CONTACT_EXISTS_KEY:Ljava/lang/String; = "NAME_ID_CONTACT_EXISTS_KEY"

.field public static final NAME_ID_CONTACT_ID_KEY:Ljava/lang/String; = "NAME_ID_CONTACT_ID_KEY"

.field public static final NAME_ID_DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.whitepages.nameid.tmobile"

.field public static final NAME_ID_LOOKUP_SERVICE_ACTION:Ljava/lang/String; = "com.whitepages.nameid.LOOKUP_SERVICE"

.field public static final NAME_ID_LOOKUP_SERVICE_COMPONENT_NAME:Ljava/lang/String; = "com.whitepages.nameid.tmobile/com.whitepages.nameid.service.LookupService"

.field public static final NAME_ID_LOOKUP_SERVICE_COMPONENT_NAME_FORMAT:Ljava/lang/String; = "%s/com.whitepages.nameid.service.LookupService"

.field public static final NAME_ID_PACKAGE_KEY:Ljava/lang/String; = "com.whitepages.nameid.NAME_ID_PACKAGE"

.field public static final NAME_ID_PHONE_KEY:Ljava/lang/String; = "NAME_ID_PHONE_KEY"

.field public static final NAME_ID_RESULT_CONTACT_NEW:I = 0x2

.field public static final NAME_ID_RESULT_CONTACT_OK:I = 0x1

.field public static final NAME_ID_RESULT_RECEIVER_KEY:Ljava/lang/String; = "NAME_ID_RESULT_RECEIVER_KEY"

.field public static final NAME_ID_RESULT_USE_PHONE:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final TRY_RECONNECT_AFTER_MILLIS:J = 0xea60L

.field private static final TRY_RECONNECT_BETWEEN_RETRIES_MILLIS:J = 0x3a98L

.field private static final TRY_RECONNECT_FOR_MILLIS:J = 0x927c0L

.field public static final mEnableCallProtectConfig:Ljava/lang/String; = "CscFeature_Common_SupportCallProtect"

.field public static final mEnableWhitePagesConfig:Ljava/lang/String; = "CscFeature_Contact_SupportWhitePages"

.field private static sConnection:Landroid/content/ServiceConnection;

.field private static sHandler:Landroid/os/Handler;

.field private static sHasInitialized:Z

.field private static sIsBound:Z

.field private static sIsHiyaAegisInstalledAndEnabled:Z

.field private static sIsNameIDInstalledAndEnabled:Z

.field private static sService:Lcom/whitepages/nameid/ILookupService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-class v0, Lcom/whitepages/nameid/NameIDHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/whitepages/nameid/NameIDHelper;->TAG:Ljava/lang/String;

    sput-object v2, Lcom/whitepages/nameid/NameIDHelper;->sService:Lcom/whitepages/nameid/ILookupService;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/whitepages/nameid/NameIDHelper;->sIsBound:Z

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/whitepages/nameid/NameIDHelper;->DBG:Z

    sput-object v2, Lcom/whitepages/nameid/NameIDHelper;->sConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/whitepages/nameid/ILookupService;
    .locals 1

    sget-object v0, Lcom/whitepages/nameid/NameIDHelper;->sService:Lcom/whitepages/nameid/ILookupService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/whitepages/nameid/ILookupService;)Lcom/whitepages/nameid/ILookupService;
    .locals 0

    sput-object p0, Lcom/whitepages/nameid/NameIDHelper;->sService:Lcom/whitepages/nameid/ILookupService;

    return-object p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/whitepages/nameid/NameIDHelper;->sIsBound:Z

    return p0
.end method

.method static synthetic access$200(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/whitepages/nameid/NameIDHelper;->tryReconnect(J)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/whitepages/nameid/NameIDHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/whitepages/nameid/NameIDHelper;->DBG:Z

    return v0
.end method

.method static synthetic access$500(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/whitepages/nameid/NameIDHelper;->tryReconnectUntil(J)V

    return-void
.end method

.method private static adjustOrder(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static beautifyCnapName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/whitepages/nameid/NameIDHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cnapName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; is bound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/whitepages/nameid/NameIDHelper;->sIsBound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    :try_start_0
    sget-boolean v1, Lcom/whitepages/nameid/NameIDHelper;->sIsBound:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/whitepages/nameid/NameIDHelper;->sService:Lcom/whitepages/nameid/ILookupService;

    invoke-interface {v1, p0}, Lcom/whitepages/nameid/ILookupService;->beautifyCnapName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/whitepages/nameid/NameIDHelper;->adjustOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/whitepages/nameid/NameIDHelper;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/whitepages/nameid/NameIDHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling beautifying cnam : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/whitepages/nameid/NameIDHelper;->DBG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static createLookupIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/os/ResultReceiver;)Landroid/content/Intent;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-boolean v1, Lcom/whitepages/nameid/NameIDHelper;->sIsNameIDInstalledAndEnabled:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/whitepages/nameid/NameIDHelper;->getNameIdServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    :goto_0
    const-string v1, "NAME_ID_PHONE_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p5, :cond_1

    const-string p2, "cnam_not_available"

    :cond_1
    const-string v1, "NAME_ID_CNAM_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NAME_ID_CONTACT_ID_KEY"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "NAME_ID_COMUNICATION_TYPE_KEY"

    if-eqz p5, :cond_3

    const-string v1, "incall"

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NAME_ID_RESULT_RECEIVER_KEY"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0

    :cond_2
    sget-boolean v1, Lcom/whitepages/nameid/NameIDHelper;->sIsHiyaAegisInstalledAndEnabled:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/whitepages/nameid/NameIDHelper;->getHiyaServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string v1, "outcall"

    goto :goto_1
.end method

.method public static createLookupIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZZLandroid/os/ResultReceiver;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-boolean v1, Lcom/whitepages/nameid/NameIDHelper;->sIsNameIDInstalledAndEnabled:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/whitepages/nameid/NameIDHelper;->getNameIdServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    :goto_0
    const-string v1, "NAME_ID_PHONE_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p6, :cond_1

    const-string p2, "cnam_not_available"

    :cond_1
    const-string v1, "NAME_ID_CNAM_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NAME_ID_CONTACT_ID_KEY"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "NAME_ID_CONTACT_EXISTS_KEY"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "NAME_ID_COMUNICATION_TYPE_KEY"

    if-eqz p6, :cond_3

    const-string v1, "incall"

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NAME_ID_RESULT_RECEIVER_KEY"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0

    :cond_2
    sget-boolean v1, Lcom/whitepages/nameid/NameIDHelper;->sIsHiyaAegisInstalledAndEnabled:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/whitepages/nameid/NameIDHelper;->getHiyaServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string v1, "outcall"

    goto :goto_1
.end method

.method private static getHiyaServiceComponentName()Landroid/content/ComponentName;
    .locals 4

    const-string v0, "%s/com.hiya.aegis.service.LookupServiceImpl"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "com.att.callprotect"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private static getNameIdServiceComponentName()Landroid/content/ComponentName;
    .locals 4

    const-string v0, "%s/com.whitepages.nameid.service.LookupService"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "com.whitepages.nameid.tmobile"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static getRiskRating(Ljava/lang/String;)I
    .locals 6

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callProtectInfo:Lcom/whitepages/nameid/CallProtectInfo;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callProtectInfo:Lcom/whitepages/nameid/CallProtectInfo;

    iget-object v4, v4, Lcom/whitepages/nameid/CallProtectInfo;->riskRating:Ljava/lang/String;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callProtectInfo:Lcom/whitepages/nameid/CallProtectInfo;

    iget-object v4, v4, Lcom/whitepages/nameid/CallProtectInfo;->riskRating:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v1

    sget-object v4, Lcom/whitepages/nameid/NameIDHelper;->TAG:Ljava/lang/String;

    const-string v5, "Gradient color not set for ATT Call Protect"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/whitepages/nameid/NameIDHelper;->DBG:Z

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized init()V
    .locals 8

    const-class v4, Lcom/whitepages/nameid/NameIDHelper;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/whitepages/nameid/NameIDHelper;->TAG:Ljava/lang/String;

    const-string v5, "NameIDHelper static init called"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/whitepages/nameid/NameIDHelper;->sConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    :cond_1
    :try_start_1
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    sput-object v3, Lcom/whitepages/nameid/NameIDHelper;->sHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/whitepages/nameid/NameIDHelper;->isNameIDInstalledAndEnabled()Z

    move-result v3

    sput-boolean v3, Lcom/whitepages/nameid/NameIDHelper;->sIsNameIDInstalledAndEnabled:Z

    invoke-static {}, Lcom/whitepages/nameid/NameIDHelper;->isHiyaAegisInstalledAndEnabled()Z

    move-result v3

    sput-boolean v3, Lcom/whitepages/nameid/NameIDHelper;->sIsHiyaAegisInstalledAndEnabled:Z

    sget-boolean v3, Lcom/whitepages/nameid/NameIDHelper;->sIsNameIDInstalledAndEnabled:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/whitepages/nameid/NameIDHelper;->sIsHiyaAegisInstalledAndEnabled:Z

    if-nez v3, :cond_2

    sget-object v3, Lcom/whitepages/nameid/NameIDHelper;->TAG:Ljava/lang/String;

    const-string v5, "both of NameID and ATT callProtect are not installed or disabled"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2
    :try_start_2
    new-instance v3, Lcom/whitepages/nameid/NameIDHelper$1;

    invoke-direct {v3}, Lcom/whitepages/nameid/NameIDHelper$1;-><init>()V

    sput-object v3, Lcom/whitepages/nameid/NameIDHelper;->sConnection:Landroid/content/ServiceConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-boolean v3, Lcom/whitepages/nameid/NameIDHelper;->sIsNameIDInstalledAndEnabled:Z

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/whitepages/nameid/NameIDHelper;->getNameIdServiceComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v5, Lcom/whitepages/nameid/NameIDHelper;->sConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v3, v1, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    sget-object v3, Lcom/whitepages/nameid/NameIDHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isBinded : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_5

    sget-boolean v3, Lcom/whitepages/nameid/NameIDHelper;->sHasInitialized:Z

    if-nez v3, :cond_5

    sget-object v3, Lcom/whitepages/nameid/NameIDHelper;->TAG:Ljava/lang/String;

    const-string v5, "bindService is failed when init() is called in first time!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    sput-boolean v3, Lcom/whitepages/nameid/NameIDHelper;->sHasInitialized:Z

    const-wide/32 v6, 0xea60

    invoke-static {v6, v7}, Lcom/whitepages/nameid/NameIDHelper;->tryReconnect(J)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v3, Lcom/whitepages/nameid/NameIDHelper;->TAG:Ljava/lang/String;

    const-string v5, "Failed to bind to lookup service -- Name ID may be uninstalled"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/whitepages/nameid/NameIDHelper;->DBG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_4
    :try_start_5
    sget-boolean v3, Lcom/whitepages/nameid/NameIDHelper;->sIsHiyaAegisInstalledAndEnabled:Z

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/whitepages/nameid/NameIDHelper;->getHiyaServiceComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    const/4 v3, 0x1

    sput-boolean v3, Lcom/whitepages/nameid/NameIDHelper;->sHasInitialized:Z
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public static isBound()Z
    .locals 1

    sget-boolean v0, Lcom/whitepages/nameid/NameIDHelper;->sIsBound:Z

    return v0
.end method

.method public static isHiyaAegisInstalledAndEnabled()Z
    .locals 8

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string v5, "com.att.callprotect"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/whitepages/nameid/NameIDHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got package info. enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v5, Lcom/whitepages/nameid/NameIDHelper;->TAG:Ljava/lang/String;

    const-string v6, "error trying to detect package : com.att.callprotect -- we are probably not installed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/whitepages/nameid/NameIDHelper;->DBG:Z

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isNameIDContact(J)Z
    .locals 4

    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-eqz v1, :cond_0

    :try_start_0
    sget-boolean v1, Lcom/whitepages/nameid/NameIDHelper;->sIsBound:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/whitepages/nameid/NameIDHelper;->sService:Lcom/whitepages/nameid/ILookupService;

    invoke-interface {v1, p0, p1}, Lcom/whitepages/nameid/ILookupService;->isNameIDContact(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/whitepages/nameid/NameIDHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling isNameIDContact id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/whitepages/nameid/NameIDHelper;->DBG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNameIDContact(Landroid/net/Uri;)Z
    .locals 4

    if-eqz p0, :cond_0

    :try_start_0
    sget-boolean v1, Lcom/whitepages/nameid/NameIDHelper;->sIsBound:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/whitepages/nameid/NameIDHelper;->sService:Lcom/whitepages/nameid/ILookupService;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/whitepages/nameid/ILookupService;->isNameIDContactByUriString(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/whitepages/nameid/NameIDHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling isNameIDContact uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/whitepages/nameid/NameIDHelper;->DBG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNameIDInstalledAndEnabled()Z
    .locals 8

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v5, Lcom/whitepages/nameid/NameIDHelper;->TAG:Ljava/lang/String;

    const-string v6, "PackageManager is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string v5, "com.whitepages.nameid.tmobile"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    sget-object v5, Lcom/whitepages/nameid/NameIDHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got package info. enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v5, Lcom/whitepages/nameid/NameIDHelper;->TAG:Ljava/lang/String;

    const-string v6, "error trying to detect package : com.whitepages.nameid.tmobile -- we are probably not installed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/whitepages/nameid/NameIDHelper;->DBG:Z

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 6

    sget-object v3, Lcom/whitepages/nameid/NameIDHelper;->TAG:Ljava/lang/String;

    const-string v4, "startActivity called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/contact"

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.INSERT_OR_EDIT"

    if-ne v3, v4, :cond_0

    sget-boolean v3, Lcom/whitepages/nameid/NameIDHelper;->sIsBound:Z

    if-nez v3, :cond_2

    :cond_0
    sget-object v3, Lcom/whitepages/nameid/NameIDHelper;->TAG:Ljava/lang/String;

    const-string v4, "calling default startactivity"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v3, Lcom/whitepages/nameid/NameIDHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/whitepages/nameid/NameIDHelper;->DBG:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    move-object v1, p1

    new-instance v2, Lcom/whitepages/nameid/NameIDHelper$2;

    invoke-direct {v2, p1, p2, v1, p0}, Lcom/whitepages/nameid/NameIDHelper$2;-><init>(Landroid/content/Intent;Landroid/net/Uri;Landroid/content/Intent;Landroid/content/Context;)V

    sget-object v3, Lcom/whitepages/nameid/NameIDHelper;->TAG:Ljava/lang/String;

    const-string v4, "about to execute task"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    aget-object v3, v0, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, v0, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static tryReconnect(J)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/whitepages/nameid/NameIDHelper;->sIsBound:Z

    sput-object v1, Lcom/whitepages/nameid/NameIDHelper;->sService:Lcom/whitepages/nameid/ILookupService;

    sput-object v1, Lcom/whitepages/nameid/NameIDHelper;->sConnection:Landroid/content/ServiceConnection;

    sget-object v0, Lcom/whitepages/nameid/NameIDHelper;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/whitepages/nameid/NameIDHelper$3;

    invoke-direct {v1}, Lcom/whitepages/nameid/NameIDHelper$3;-><init>()V

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static tryReconnectUntil(J)V
    .locals 6

    sget-object v2, Lcom/whitepages/nameid/NameIDHelper;->sService:Lcom/whitepages/nameid/ILookupService;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/whitepages/nameid/NameIDHelper;->TAG:Ljava/lang/String;

    const-string v3, "connected during retry cycle!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v2, v0, p0

    if-lez v2, :cond_1

    sget-object v2, Lcom/whitepages/nameid/NameIDHelper;->TAG:Ljava/lang/String;

    const-string v3, "Giving up on retries"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/whitepages/nameid/NameIDHelper;->TAG:Ljava/lang/String;

    const-string v3, "trying to reconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    sput-object v2, Lcom/whitepages/nameid/NameIDHelper;->sConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    sput-boolean v2, Lcom/whitepages/nameid/NameIDHelper;->sIsBound:Z

    invoke-static {}, Lcom/whitepages/nameid/NameIDHelper;->init()V

    sget-object v2, Lcom/whitepages/nameid/NameIDHelper;->sHandler:Landroid/os/Handler;

    new-instance v3, Lcom/whitepages/nameid/NameIDHelper$4;

    invoke-direct {v3, p0, p1}, Lcom/whitepages/nameid/NameIDHelper$4;-><init>(J)V

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
