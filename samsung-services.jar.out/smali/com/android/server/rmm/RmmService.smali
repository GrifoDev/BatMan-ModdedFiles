.class public Lcom/android/server/rmm/RmmService;
.super Lcom/android/server/rmm/aidl/IRmm$Stub;
.source "RmmService.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/rmm/RmmService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/rmm/RmmService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/rmm/aidl/IRmm$Stub;-><init>()V

    sget-object v0, Lcom/android/server/rmm/RmmService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Rmm Service Started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/android/server/rmm/RmmService;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public startRmm()V
    .locals 3

    sget-object v0, Lcom/android/server/rmm/RmmService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startRmm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/rmm/RmmService;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    return-void
.end method
