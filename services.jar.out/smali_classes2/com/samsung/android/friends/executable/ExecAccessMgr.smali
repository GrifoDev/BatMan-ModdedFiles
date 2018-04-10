.class public Lcom/samsung/android/friends/executable/ExecAccessMgr;
.super Ljava/lang/Object;
.source "ExecAccessMgr.java"

# interfaces
.implements Lcom/samsung/android/friends/action/ActionBase;
.implements Lcom/samsung/android/friends/action/ActionExecutable;


# static fields
.field private static final ANDROID_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final MAX_PLATFORM_PKG_COUNT:I = 0xa

.field private static final PRIVILEGED_PACKAGES:[Ljava/lang/String;

.field private static final RO_OFFICIAL:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ExecAccessMgr"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPlatformPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.mateagent"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->PRIVILEGED_PACKAGES:[Ljava/lang/String;

    const-string/jumbo v0, "ro.build.official.release"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->RO_OFFICIAL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    return-void
.end method

.method private addPlatformPkg(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return v5

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    const-string/jumbo v1, "ExecAccessMgr"

    const-string/jumbo v3, "exceeds max count"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v5

    :cond_1
    if-nez v0, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v2

    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getRegisteredPlatformPkgs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasPlatformPkg(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isPrivilegedPkg(I)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v4, v1

    if-lez v4, :cond_3

    array-length v7, v1

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v0, v1, v6

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    :cond_1
    sget-object v8, Lcom/samsung/android/friends/executable/ExecAccessMgr;->PRIVILEGED_PACKAGES:[Ljava/lang/String;

    array-length v9, v8

    move v4, v5

    :goto_1
    if-ge v4, v9, :cond_0

    aget-object v3, v8, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string/jumbo v10, "android"

    invoke-virtual {v2, v10, v3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_2

    return v11

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "ExecAccessMgr"

    const-string/jumbo v6, "isPrivilegedPkg uid[%d] is invalid"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v4, v6, v7}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v5
.end method

.method private isRegisteredPlatformPkg(I)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    aget-object v1, v0, v7

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->hasPlatformPkg(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "android"

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "ExecAccessMgr"

    const-string/jumbo v4, "isRegisteredPlatformPkg pkg[%s] uid[%s] is valid"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v8

    :cond_0
    const-string/jumbo v3, "ExecAccessMgr"

    const-string/jumbo v4, "isRegisteredPlatformPkg uid[%d] is invalid"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v7
.end method

.method private static isValidAgentSvcActionFormat(I)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/high16 v0, 0xf0000

    const/high16 v2, 0x200000

    and-int/2addr v2, p0

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const-string/jumbo v2, "ExecAccessMgr"

    const-string/jumbo v3, "invalid action [0x%x]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/samsung/android/friends/util/LogFrs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    return v1

    :cond_2
    const/high16 v2, 0xf0000

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    and-int/lit16 v2, p0, 0xfff

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isValidSysSvcActionFormat(I)Z
    .locals 11

    const/4 v5, 0x0

    const/high16 v6, -0x1000000

    const/high16 v7, -0x10000000

    const/high16 v8, 0xf0000

    const v9, 0xf000

    const/16 v10, 0xfff

    filled-new-array {v6, v7, v8, v9, v10}, [I

    move-result-object v2

    const/high16 v6, 0x100000

    const/high16 v7, 0x70000

    filled-new-array {v5, v6, v7, v5, v5}, [I

    move-result-object v4

    const/4 v1, 0x0

    const/4 v3, 0x0

    array-length v7, v2

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget v0, v2, v6

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    aget v8, v4, v1

    and-int v9, p0, v0

    if-ne v8, v9, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :pswitch_1
    aget v8, v4, v1

    and-int v9, p0, v0

    and-int/2addr v8, v9

    if-eqz v8, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_2
    and-int v8, p0, v0

    aget v9, v4, v1

    if-le v8, v9, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v3, 0x1

    array-length v7, v2

    if-ne v6, v7, :cond_2

    const/4 v5, 0x1

    :cond_2
    return v5

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private removePlatformPkg(Ljava/lang/String;Z)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    monitor-enter v1

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v2

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return v2

    :cond_1
    monitor-exit v1

    const-string/jumbo v0, "ExecAccessMgr"

    const-string/jumbo v1, "failed to remove platform pkg"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v3

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static throwSecurityException(ILjava/lang/String;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v3, "ExecAccessMgr"

    const-string/jumbo v4, "illegal access: uid[%d] / pid[%d] / %d / %s"

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v9

    if-eqz p1, :cond_0

    move-object v2, p1

    :goto_0
    const/4 v6, 0x3

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "%s: reason(%d)"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/samsung/android/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->create()Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v1

    const-string/jumbo v2, "paramInt0"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;I)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    if-eqz p1, :cond_0

    const-string/jumbo v1, "paramStr0"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->addPlatformPkg(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->create()Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v1

    const-string/jumbo v2, "paramList0"

    invoke-direct {p0}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->getRegisteredPlatformPkgs()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    if-eqz p1, :cond_0

    const-string/jumbo v1, "paramStr0"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "paramBool0"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->removePlatformPkg(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x120006
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isAccessible(I)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->isValidSysSvcActionFormat(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->isValidAgentSvcActionFormat(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/high16 v3, 0x10000

    and-int/2addr v3, p1

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/samsung/android/friends/common/FwDependency;->getProcessSystemUid()I

    move-result v3

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v3, "ExecAccessMgr"

    const-string/jumbo v4, "system uid"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    const-string/jumbo v3, "ExecAccessMgr"

    const-string/jumbo v4, "isAccessible returns false / action[0x%x], uid [%d], pid[%d]"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_2
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/high16 v3, 0x20000

    and-int/2addr v3, p1

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/samsung/android/friends/common/FwDependency;->getProcessShellUid()I

    move-result v3

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->isShellAccessible()Z

    move-result v1

    :goto_2
    const-string/jumbo v3, "ExecAccessMgr"

    const-string/jumbo v4, "privileged uid"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-direct {p0, v2}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->isPrivilegedPkg(I)Z

    move-result v1

    goto :goto_2

    :cond_6
    const/high16 v3, 0x40000

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->isRegisteredPlatformPkg(I)Z

    move-result v1

    const-string/jumbo v3, "ExecAccessMgr"

    const-string/jumbo v4, "platform key signed pkg"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1
.end method

.method public isShellAccessible()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/friends/common/FwDependency;->isProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "false"

    sget-object v1, Lcom/samsung/android/friends/executable/ExecAccessMgr;->RO_OFFICIAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
