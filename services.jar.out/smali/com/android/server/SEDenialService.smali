.class public Lcom/android/server/SEDenialService;
.super Landroid/service/ISEDenialService$Stub;
.source "SEDenialService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SEDenialService$AuditFileObserver;,
        Lcom/android/server/SEDenialService$WifiStateReceiver;
    }
.end annotation


# static fields
.field private static final AASA_LOG_FILE:Ljava/lang/String; = "AASA_LOG_FILE"

.field private static final AASA_NOTIFICATION:Ljava/lang/String; = "samsung.intent.action.knox.AASA_NOTIFICATION"

.field private static final AASA_OLD:Ljava/lang/String; = "AASA.old"

.field private static final AMS_LOG_FILE:Ljava/lang/String; = "AMS_LOG_FILE"

.field private static final AMS_NOTIFICATION:Ljava/lang/String; = "samsung.intent.action.knox.AMS_NOTIFICATION"

.field private static final AMS_OLD:Ljava/lang/String; = "ams.old"

.field private static final AUDIT_OLD:Ljava/lang/String; = "audit.old"

.field private static final AUDIT_PATH:Ljava/lang/String; = "/data/misc/audit/"

.field private static final DENIAL_LOG_FILE:Ljava/lang/String; = "DENIAL_LOG_FILE"

.field private static final DENIAL_NOTIFICATION:Ljava/lang/String; = "samsung.intent.action.knox.DENIAL_NOTIFICATION"

.field private static final IS_NOTIFICATION:Ljava/lang/String; = "isNotification"

.field private static final SECURITY_LOG_AGENT_PACKAGE:Ljava/lang/String; = "com.samsung.android.securitylogagent"

.field private static final SELINUX_DENIAL:Ljava/lang/String; = "audit.ondenial"

.field private static final TAG:Ljava/lang/String; = "SecurityLogAgent:SEDenialService"

.field private static final WIFI_RECEIVER_CLOSE_NOTIFICATION:Ljava/lang/String; = "samsung.intent.action.knox.WIFI_RECEIVER_CLOSE"

.field private static final WIFI_STATE_CHANGED_INTENT:Ljava/lang/String; = "android.net.wifi.WIFI_STATE_CHANGED"

.field private static final WIFI_STATE_CHANGED_NOTIFICATION:Ljava/lang/String; = "samsung.intent.action.knox.WIFI_STATE_CHANGED"

.field private static final WIFI_STATE_DISABLED:I = 0x1

.field private static final WIFI_STATE_DISABLING:I = 0x0

.field private static final WIFI_STATE_ENABLED:I = 0x3

.field private static final WIFI_STATE_ENABLING:I = 0x2


# instance fields
.field private auditObserver:Lcom/android/server/SEDenialService$AuditFileObserver;

.field private final mContext:Landroid/content/Context;

.field private mWifiStateReceiver:Lcom/android/server/SEDenialService$WifiStateReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/server/SEDenialService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SEDenialService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SEDenialService;)Lcom/android/server/SEDenialService$WifiStateReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SEDenialService;->mWifiStateReceiver:Lcom/android/server/SEDenialService$WifiStateReceiver;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/service/ISEDenialService$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/SEDenialService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "SecurityLogAgent:SEDenialService"

    const-string/jumbo v1, "Started FileObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/SEDenialService$AuditFileObserver;

    const-string/jumbo v1, "/data/misc/audit/"

    const/16 v2, 0x8a

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/SEDenialService$AuditFileObserver;-><init>(Lcom/android/server/SEDenialService;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/SEDenialService;->auditObserver:Lcom/android/server/SEDenialService$AuditFileObserver;

    iget-object v0, p0, Lcom/android/server/SEDenialService;->auditObserver:Lcom/android/server/SEDenialService$AuditFileObserver;

    invoke-virtual {v0}, Lcom/android/server/SEDenialService$AuditFileObserver;->startWatching()V

    new-instance v0, Lcom/android/server/SEDenialService$WifiStateReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/SEDenialService$WifiStateReceiver;-><init>(Lcom/android/server/SEDenialService;)V

    iput-object v0, p0, Lcom/android/server/SEDenialService;->mWifiStateReceiver:Lcom/android/server/SEDenialService$WifiStateReceiver;

    return-void
.end method
