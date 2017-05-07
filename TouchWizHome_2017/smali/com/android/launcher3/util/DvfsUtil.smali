.class public Lcom/android/launcher3/util/DvfsUtil;
.super Ljava/lang/Object;
.source "DvfsUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sDvfsHelper:Lcom/android/launcher3/util/DvfsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher3/util/DvfsUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/DvfsUtil;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/util/DvfsUtil;->sDvfsHelper:Lcom/android/launcher3/util/DvfsHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/launcher3/util/DvfsUtil;->sDvfsHelper:Lcom/android/launcher3/util/DvfsHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/util/DvfsUtil;->sDvfsHelper:Lcom/android/launcher3/util/DvfsHelper;

    iget-object v0, v0, Lcom/android/launcher3/util/DvfsHelper;->mContext:Landroid/content/Context;

    if-ne v0, p1, :cond_0

    sget-object v0, Lcom/android/launcher3/util/DvfsUtil;->sDvfsHelper:Lcom/android/launcher3/util/DvfsHelper;

    iget-object v0, v0, Lcom/android/launcher3/util/DvfsHelper;->mAppLauncherBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/android/launcher3/util/DvfsHelper;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/DvfsHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/util/DvfsUtil;->sDvfsHelper:Lcom/android/launcher3/util/DvfsHelper;

    :cond_1
    return-void
.end method


# virtual methods
.method public acquireAppLaunch(Landroid/content/Intent;)Z
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher3/util/DvfsUtil;->sDvfsHelper:Lcom/android/launcher3/util/DvfsHelper;

    iget-object v2, v2, Lcom/android/launcher3/util/DvfsHelper;->mAppLauncherBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/android/launcher3/util/DvfsUtil;->sDvfsHelper:Lcom/android/launcher3/util/DvfsHelper;

    iget-object v2, v2, Lcom/android/launcher3/util/DvfsHelper;->mAppLauncherBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire(Ljava/lang/String;)V

    const-string v2, "hanjo"

    const-string v3, "Boosting"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/launcher3/util/DvfsUtil;->TAG:Ljava/lang/String;

    const-string v3, "appLauncherBooster is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
