.class Lcom/samsung/android/friends/cmd/AccessoryCmd;
.super Ljava/lang/Object;
.source "AccessoryCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;
    }
.end annotation


# static fields
.field private static final MAX_BYTES_SIZE:I = 0x800

.field private static final MAX_COUNT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "AccessoryCmd"


# instance fields
.field private final mAccessoryMgr:Lcom/samsung/android/friends/executable/ExecAccessoryMgr;

.field private final mContext:Landroid/content/Context;

.field private final mDispatcher:Lcom/samsung/android/friends/action/ActionDispatcher;

.field private final mFakeAccessories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLastVerificationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/friends/action/ActionDispatcher;Lcom/samsung/android/friends/executable/ExecAccessoryMgr;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mAccessoryMgr:Lcom/samsung/android/friends/executable/ExecAccessoryMgr;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mFakeAccessories:Ljava/util/Map;

    iput-object p2, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mDispatcher:Lcom/samsung/android/friends/action/ActionDispatcher;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mLastId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private assertAccessory(Ljava/io/PrintWriter;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mAccessoryMgr:Lcom/samsung/android/friends/executable/ExecAccessoryMgr;

    invoke-virtual {v0}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->getAccessoryCount()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "Failed. Retry after removing all attached accessories."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->print(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private getAccessoryInfo(Ljava/lang/String;)Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mFakeAccessories:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mFakeAccessories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getAccessoryKey(I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mFakeAccessories:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mFakeAccessories:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->-get1(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;)I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v3

    :cond_1
    monitor-exit v4

    return-object v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getAppendedAccessoryCount()I
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mFakeAccessories:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mFakeAccessories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getFormattedBytes(IILjava/lang/String;)[B
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x10

    const/4 v5, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1c

    if-eq v3, v4, :cond_1

    :cond_0
    return-object v7

    :cond_1
    const/16 v3, 0x17

    new-array v0, v3, [B

    const/16 v3, 0x16

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    const/16 v3, 0x11

    aput-byte v3, v0, v5

    const/4 v3, 0x2

    aput-byte v5, v0, v3

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    const/4 v4, 0x3

    aput-byte v3, v0, v4

    int-to-byte v3, p1

    const/4 v4, 0x4

    aput-byte v3, v0, v4

    shr-int/lit8 v3, p2, 0x18

    int-to-byte v3, v3

    const/4 v4, 0x5

    aput-byte v3, v0, v4

    shr-int/lit8 v3, p2, 0x10

    int-to-byte v3, v3

    const/4 v4, 0x6

    aput-byte v3, v0, v4

    shr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    const/4 v4, 0x7

    aput-byte v3, v0, v4

    int-to-byte v3, p2

    const/16 v4, 0x8

    aput-byte v3, v0, v4

    const/4 v2, 0x0

    const/16 v1, 0x9

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private internalAdd(Ljava/io/PrintWriter;[B[B)Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;
    .locals 9

    const/16 v5, 0x800

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->assertAccessory(Ljava/io/PrintWriter;)Z

    move-result v4

    if-nez v4, :cond_0

    return-object v6

    :cond_0
    if-eqz p2, :cond_2

    array-length v4, p2

    if-lt v4, v5, :cond_2

    :cond_1
    const-string/jumbo v4, "Failed! Wrong parameter."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1, v4, v5}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->print(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6

    :cond_2
    if-eqz p3, :cond_3

    array-length v4, p3

    if-ge v4, v5, :cond_1

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->getAppendedAccessoryCount()I

    move-result v4

    const/16 v5, 0x1e

    if-ne v4, v5, :cond_4

    const-string/jumbo v4, "Failed! Exceed max accessory count."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1, v4, v5}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->print(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6

    :cond_4
    const/4 v2, 0x0

    if-eqz p2, :cond_7

    invoke-static {}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->create()Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v4

    const-string/jumbo v5, "data"

    invoke-virtual {v4, v5, p2}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v1

    if-eqz p3, :cond_5

    const-string/jumbo v4, "extraData"

    invoke-virtual {v1, v4, p3}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    :cond_5
    invoke-static {p2}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->getAccessoryKey([B)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mFakeAccessories:Ljava/util/Map;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mFakeAccessories:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    new-instance v3, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;

    invoke-virtual {v1}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mLastId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v3, v4, v6, v7}, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;-><init>(Landroid/os/Bundle;ILcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x3

    const/4 v6, 0x2

    :try_start_1
    invoke-static {p2, v4, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->-set2(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;I)I

    iget-object v4, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mFakeAccessories:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    :cond_6
    monitor-exit v5

    :cond_7
    if-eqz v2, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "A new fake accessory ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->-get1(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] is appended."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1, v4, v5}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->print(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v2

    :catchall_0
    move-exception v4

    :goto_1
    monitor-exit v5

    throw v4

    :cond_8
    const-string/jumbo v4, "Failed to add a fake accessory."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1, v4, v5}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->print(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_1
    move-exception v4

    move-object v2, v3

    goto :goto_1
.end method

.method private isDiscoverableSvcType(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static varargs print(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_1

    array-length v0, p2

    if-lez v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v0, "AccessoryCmd"

    invoke-static {v0, p1, p2}, Lcom/samsung/android/friends/util/LogFrs;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method private setLastVerificationId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mLastVerificationId:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mLastVerificationId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method accessoryDiscovered(Ljava/io/PrintWriter;I)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->getAccessoryKey(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    if-nez v3, :cond_1

    const-string/jumbo v4, "A fake accessory [%d] event is failed."

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {p1, v4, v5}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->print(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v3

    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->getAccessoryInfo(Ljava/lang/String;)Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->-get0(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->-get4(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->isDiscoverableSvcType(I)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "It\'s not a service type of the discoverable accessory."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1, v4, v5}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->print(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "paramByteA0"

    invoke-static {v0}, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->-get0(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;)Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "data"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "paramStr0"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->setLastVerificationId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "application/com.samsung.android.mateagent"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "SYSTEM"

    invoke-static {v5}, Lcom/samsung/android/friends/common/FwDependency;->getUserHandle(Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcom/samsung/android/friends/common/FwDependency;->startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "A fake accessory [%d] is discovered."

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {p1, v4, v5}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->print(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method accessoryStateChanged(Ljava/io/PrintWriter;IZ)Z
    .locals 12

    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, p2}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->getAccessoryKey(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v6, "A fake accessory [%d] event is failed."

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {p1, v6, v7}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->print(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    return v10

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mAccessoryMgr:Lcom/samsung/android/friends/executable/ExecAccessoryMgr;

    invoke-virtual {v6, v1}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->hasAccessory(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, p3, :cond_3

    const-string/jumbo v7, "Error! A fake accessory [%d] is already %s."

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v10

    if-eqz p3, :cond_2

    const-string/jumbo v6, "attached"

    :goto_1
    aput-object v6, v8, v11

    invoke-static {p1, v7, v8}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->print(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "detached"

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->getAccessoryInfo(Ljava/lang/String;)Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->-get0(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;)Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {v0}, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->-get4(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->isDiscoverableSvcType(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "It\'s a service type of the discoverable accessory."

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p1, v6, v7}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->print(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->-get0(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v6, "attached"

    invoke-virtual {v5, v6, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mDispatcher:Lcom/samsung/android/friends/action/ActionDispatcher;

    const v7, 0x12000a

    invoke-virtual {v6, v7, v5}, Lcom/samsung/android/friends/action/ActionDispatcher;->execute(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "attached"

    invoke-virtual {v2, v6, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v7, "A fake accessory [%d] is %s."

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v8, v9

    if-eqz p3, :cond_5

    const-string/jumbo v6, "attached"

    :goto_2
    const/4 v9, 0x1

    aput-object v6, v8, v9

    invoke-static {p1, v7, v8}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->print(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    return v11

    :cond_5
    const-string/jumbo v6, "detached"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-static {v4}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method add(Ljava/io/PrintWriter;IILjava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->getFormattedBytes(IILjava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->internalAdd(Ljava/io/PrintWriter;[B[B)Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p4}, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->-set0(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->-set2(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;I)I

    invoke-static {v0, p3}, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->-set1(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;I)I

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method add(Ljava/io/PrintWriter;[B[B)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->internalAdd(Ljava/io/PrintWriter;[B[B)Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method clearAll(Ljava/io/PrintWriter;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->assertAccessory(Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mFakeAccessories:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mFakeAccessories:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mFakeAccessories:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mLastId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string/jumbo v1, "All fake accessories are removed."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->print(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method getLastVerificationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mLastVerificationId:Ljava/lang/String;

    return-object v0
.end method

.method remove(Ljava/io/PrintWriter;I)Z
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->assertAccessory(Ljava/io/PrintWriter;)Z

    move-result v6

    if-nez v6, :cond_0

    return v8

    :cond_0
    const/4 v1, 0x0

    iget-object v7, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mFakeAccessories:Ljava/util/Map;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mFakeAccessories:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;

    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->-get1(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;)I

    move-result v6

    if-ne v6, p2, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :cond_2
    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mFakeAccessories:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v7

    if-eqz v1, :cond_4

    const/4 v5, 0x1

    :goto_0
    if-eqz v5, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "A fake accessory ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] is removed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p1, v6, v7}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->print(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return v5

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to remove a fake accessory ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p1, v6, v7}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->print(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method showStatus(Ljava/io/PrintWriter;)Z
    .locals 20

    if-nez p1, :cond_0

    const/4 v15, 0x0

    return v15

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mFakeAccessories:Ljava/util/Map;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mFakeAccessories:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v13

    if-lez v13, :cond_4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "-------- Fake accessory list: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v15, v1}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->print(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/friends/cmd/AccessoryCmd;->mFakeAccessories:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v14, :cond_1

    if-eqz v9, :cond_1

    invoke-static {v14}, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->-get0(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v14}, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->-get2(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v14}, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->-get3(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;)I

    move-result v11

    invoke-static {v14}, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->-get4(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;)I

    move-result v12

    const-string/jumbo v15, "attached"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v15, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v15, "data"

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    const-string/jumbo v15, "extraData"

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    if-eqz v10, :cond_5

    const/4 v15, -0x1

    if-eq v11, v15, :cond_5

    const/4 v15, -0x1

    if-eq v12, v15, :cond_5

    const-string/jumbo v15, "[%d] %s / svc type[%d] / svc id[0x%x] / serial no[%s] / %s"

    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static {v14}, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->-get1(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v17, v19

    const/16 v18, 0x1

    aput-object v9, v17, v18

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x2

    aput-object v18, v17, v19

    invoke-static {v11}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x3

    aput-object v18, v17, v19

    invoke-static {v10}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x4

    aput-object v18, v17, v19

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const/16 v19, 0x5

    aput-object v18, v17, v19

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/samsung/android/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v6, :cond_2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "\tdata: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v6

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v6, v0, v1}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->getHexString([BII)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    if-eqz v7, :cond_3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "\textra: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v7

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v7, v0, v1}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->getHexString([BII)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v15, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15

    :cond_4
    :try_start_1
    const-string/jumbo v15, "No fake accessory"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v15, v1}, Lcom/samsung/android/friends/cmd/AccessoryCmd;->print(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v15, 0x0

    monitor-exit v16

    return v15

    :cond_5
    :try_start_2
    const-string/jumbo v15, "[%d] %s / %s"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static {v14}, Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;->-get1(Lcom/samsung/android/friends/cmd/AccessoryCmd$AccessoryInfo;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v17, v19

    const/16 v18, 0x1

    aput-object v9, v17, v18

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const/16 v19, 0x2

    aput-object v18, v17, v19

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/samsung/android/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    goto/16 :goto_1

    :cond_6
    monitor-exit v16

    const/4 v15, 0x1

    return v15
.end method
