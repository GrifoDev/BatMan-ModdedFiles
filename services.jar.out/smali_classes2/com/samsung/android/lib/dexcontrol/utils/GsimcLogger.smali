.class public Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;
.super Ljava/lang/Object;
.source "GsimcLogger.java"


# static fields
.field private static final DEX_GSIM_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.dexcontrol"

.field private static final EXTRA_DATA:Ljava/lang/String; = "data"

.field public static final GSIM_LOG_DEVICE_ERROR:Ljava/lang/String; = "2ERR"

.field public static final GSIM_STATUS_LOG_DEX_PAD_FAN_SETTING_CHANGE:Ljava/lang/String; = "2FAN"

.field public static final GSIM_STATUS_LOG_DEX_PAD_USB_DEVICE:Ljava/lang/String; = "2USB"

.field public static final GSIM_STATUS_LOG_DEX_STATION_FAN_SETTING_CHANGE:Ljava/lang/String; = "1FAN"

.field public static final GSIM_STATUS_LOG_DEX_STATION_USB_DEVICE:Ljava/lang/String; = "1USB"

.field public static final GSIM_STATUS_LOG_ETHERNET:Ljava/lang/String; = "1ETH"

.field public static final GSIM_STATUS_LOG_TA_POWER_LEVEL_1:Ljava/lang/String; = "1"

.field public static final GSIM_STATUS_LOG_TA_POWER_LEVEL_2:Ljava/lang/String; = "2"

.field public static final GSIM_STATUS_LOG_TA_POWER_LEVEL_3:Ljava/lang/String; = "3"

.field public static final GSIM_STATUS_LOG_TA_POWER_LEVEL_4:Ljava/lang/String; = "4"

.field public static final GSIM_STATUS_LOG_TA_TYPE:Ljava/lang/String; = "2TAT"

.field private static final LOGGER_PACKAGE:Ljava/lang/String; = "com.samsung.android.providers.context"

.field private static final REPORT_APP_STATUS_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

.field private static final TAG:Ljava/lang/String;

.field private static final USE_APP_FEATURE_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getVersionOfContextProviders(Landroid/content/Context;)I
    .locals 6

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.providers.context"

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v0

    sget-object v3, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Could not find ContextProvider"

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method private static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 7

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->getVersionOfContextProviders(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "app_id"

    const-string/jumbo v5, "com.samsung.android.app.dexcontrol"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "feature"

    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_4

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-gez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-nez v3, :cond_1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    if-nez p5, :cond_5

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v3, "com.samsung.android.providers.context"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "data"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v3, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Logger intent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_2
    return-void

    :cond_3
    return-void

    :cond_4
    const-string/jumbo v4, "extra"

    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Error while using insertLog"

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static insertStatusLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x1

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public static insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public static insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/lib/dexcontrol/utils/GsimcLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method
