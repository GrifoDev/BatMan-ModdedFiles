.class public final Lcom/android/server/SemService;
.super Lcom/samsung/android/service/SemService/ISemService$Stub;
.source "SemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SemService$AllowList;
    }
.end annotation


# static fields
.field public static final HEX_CHARS:[C

.field private static final TAG:Ljava/lang/String; = "SemService"

.field private static mContext:Landroid/content/Context;

.field private static mJavaPkgAllowList:Lcom/android/server/SemService$AllowList;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mRequestedProcess:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/SemService;->HEX_CHARS:[C

    const-string/jumbo v0, "sec_sem"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/16 v2, 0x3e8

    invoke-direct {p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;-><init>()V

    sput-object p1, Lcom/android/server/SemService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/SemService$AllowList;

    invoke-direct {v0}, Lcom/android/server/SemService$AllowList;-><init>()V

    sput-object v0, Lcom/android/server/SemService;->mJavaPkgAllowList:Lcom/android/server/SemService$AllowList;

    sget-object v0, Lcom/android/server/SemService;->mJavaPkgAllowList:Lcom/android/server/SemService$AllowList;

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/SemService;->mJavaPkgAllowList:Lcom/android/server/SemService$AllowList;

    const-string/jumbo v1, "com.sem.factoryapp"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/SemService;->mJavaPkgAllowList:Lcom/android/server/SemService$AllowList;

    const-string/jumbo v1, "com.skms.android.agent"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemService$AllowList;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/SemService;->mJavaPkgAllowList:Lcom/android/server/SemService$AllowList;

    const-string/jumbo v1, "com.skms.android.agent:remote"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SemService$AllowList;->add(Ljava/lang/String;I)V

    const-string/jumbo v0, "SemService"

    const-string/jumbo v1, "Start SemService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [C

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    sget-object v3, Lcom/android/server/SemService;->HEX_CHARS:[C

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/android/server/SemService;->HEX_CHARS:[C

    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2

    :cond_1
    return-object v2
.end method

.method private hasAccessPermission(II)Z
    .locals 9

    const-string/jumbo v1, ""

    :try_start_0
    sget-object v6, Lcom/android/server/SemService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p1, :cond_0

    iget-object v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sget-object v6, Lcom/android/server/SemService;->mJavaPkgAllowList:Lcom/android/server/SemService$AllowList;

    invoke-virtual {v6, v1, p2}, Lcom/android/server/SemService$AllowList;->match(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v6, "SemService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Requested package name = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/server/SemService;->mRequestedProcess:Ljava/lang/String;

    :goto_1
    return v5

    :catch_0
    move-exception v2

    const-string/jumbo v6, "SemService"

    const-string/jumbo v7, "Error occurs on checking package name."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, ""

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "SemService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Permission denied. Package name = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "], UID = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/android/server/SemService;->mRequestedProcess:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public native deactivateCards(I[[B[II)I
.end method

.method public deactivate_Cards(I[Ljava/lang/String;[II)I
    .locals 9

    const-string/jumbo v6, "SemService"

    const-string/jumbo v7, "Start deactivate_Cards"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    new-array v4, p4, [[B

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/server/SemService;->hasAccessPermission(II)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    return v6

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, p4, :cond_1

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    aget-object v6, p2, v3

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    aput-object v6, v4, v3

    aget-object v6, v4, v3

    aget-object v7, v4, v3

    array-length v7, v7

    const/4 v8, 0x2

    invoke-static {v6, v8, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    aput-object v6, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v6, "SemService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Package Name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "SemService"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :try_start_1
    sget-object v6, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {p0, p1, v4, p3, p4}, Lcom/android/server/SemService;->deactivateCards(I[[B[II)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    :try_start_3
    monitor-exit v6

    :goto_2
    return v5

    :catchall_0
    move-exception v7

    monitor-exit v6

    throw v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v2

    const-string/jumbo v6, "SemService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to deactivate_Cards, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public native getAttackCountCheck([B)I
.end method

.method public native getCPLC14mode([B)I
.end method

.method public getCPLC14mode()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v3, "SemService"

    const-string/jumbo v4, "Start GetCPLC14mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x64

    new-array v2, v3, [B

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/SemService;->hasAccessPermission(II)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v7

    :cond_0
    :try_start_0
    sget-object v4, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/server/SemService;->getCPLC14mode([B)I

    move-result v0

    const-string/jumbo v3, "SemService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "GetCPLC14mode Len "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v0, :cond_1

    const-string/jumbo v3, "SemService"

    const-string/jumbo v5, "no data to be returned"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v7

    :cond_1
    const/16 v3, 0x3e8

    if-ge v0, v3, :cond_2

    :try_start_3
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-string/jumbo v3, "SemService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCPLC14mode CPLC : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/android/server/SemService;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/server/SemService;->bytesToHex([B)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v3

    :cond_2
    :try_start_5
    const-string/jumbo v3, "SemService"

    const-string/jumbo v5, "data overflow"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v4

    return-object v7

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SemService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to getCPLC14mode, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method public native getHWParamData([BI)I
.end method

.method public native getRestricted05mode([B)I
.end method

.method public getRestrictedCheck05mode()Ljava/lang/String;
    .locals 9

    const/16 v8, 0x3e8

    const/4 v7, 0x0

    const-string/jumbo v3, "SemService"

    const-string/jumbo v4, "Start getRestricted05mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v8, [B

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/SemService;->hasAccessPermission(II)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v7

    :cond_0
    :try_start_0
    sget-object v4, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/server/SemService;->getRestricted05mode([B)I

    move-result v0

    const-string/jumbo v3, "SemService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRestricted05mode Len "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v0, :cond_1

    const-string/jumbo v3, "SemService"

    const-string/jumbo v5, "no data to be returned"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v7

    :cond_1
    if-ge v0, v8, :cond_2

    :try_start_3
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-string/jumbo v3, "SemService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRestricted05mode Return0 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v3

    :cond_2
    :try_start_5
    const-string/jumbo v3, "SemService"

    const-string/jumbo v5, "data overflow"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v4

    return-object v7

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SemService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to getRestricted05mode, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method public get_AttackCountCheck([B)I
    .locals 5

    const-string/jumbo v2, "SemService"

    const-string/jumbo v3, "Start get_AttackCountCheck"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SemService;->hasAccessPermission(II)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/SemService;->getAttackCountCheck([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    monitor-exit v2

    :goto_0
    return v0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to get_AttackCountCheck, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public get_HWParamData([BI)I
    .locals 5

    const-string/jumbo v2, "SemService"

    const-string/jumbo v3, "Start get_HWParamData"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SemService;->hasAccessPermission(II)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemService;->getHWParamData([BI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    monitor-exit v2

    :goto_0
    return v0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to get_HWParamData, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public native handleCCM([BI)[Ljava/lang/String;
.end method

.method public handle_CCM([BI)[Ljava/lang/String;
    .locals 5

    const-string/jumbo v2, "SemService"

    const-string/jumbo v3, "Start handle_CCM"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SemService;->hasAccessPermission(II)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SemService;->handleCCM([BI)[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    monitor-exit v2

    :goto_0
    return-object v1

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to handle_CCM, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public native printSeState()V
.end method

.method public print_SeState()V
    .locals 4

    const-string/jumbo v1, "SemService"

    const-string/jumbo v2, "Start print_SeState"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/SemService;->hasAccessPermission(II)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/SemService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/SemService;->printSeState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to print_SeState, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
