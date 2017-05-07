.class public Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;
.super Ljava/lang/Object;
.source "ExecAccessoryMgr.java"

# interfaces
.implements Lcom/samsung/android/mateservice/action/ActionExecutable;
.implements Lcom/samsung/android/mateservice/common/Dump;


# static fields
.field private static final TAG:Ljava/lang/String; = "AccessoryMgr"


# instance fields
.field private final mAccessories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/UUID;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mAgentSvcMgr:Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$ConnectionMgr;

.field private final mHistoryMgr:Lcom/samsung/android/mateservice/common/Logger;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mateservice/common/Logger;Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$ConnectionMgr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;->mHistoryMgr:Lcom/samsung/android/mateservice/common/Logger;

    iput-object p2, p0, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;->mAgentSvcMgr:Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$ConnectionMgr;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;->mAccessories:Ljava/util/HashMap;

    return-void
.end method

.method private accessoryStateChanged(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 17

    const-string/jumbo v10, "attached"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string/jumbo v10, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const-string/jumbo v10, "extraData"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;->mHistoryMgr:Lcom/samsung/android/mateservice/common/Logger;

    const-string/jumbo v11, "AccessoryMgr"

    const-string/jumbo v12, "wrong parameter %s %d %d"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;->getLength([B)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v13, v15

    invoke-static {v11, v12, v13}, Lcom/samsung/android/mateservice/util/UtilLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/mateservice/common/Logger;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v10, 0x0

    return-object v10

    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;->getUniqueKey([B)Ljava/util/UUID;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string/jumbo v10, "timeStamp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v7, v1}, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;->update(ZLjava/util/UUID;Landroid/os/Bundle;)Z

    move-result v10

    if-nez v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;->mHistoryMgr:Lcom/samsung/android/mateservice/common/Logger;

    const-string/jumbo v11, "AccessoryMgr"

    const-string/jumbo v12, "not found matched with key[%s] attached[%s]"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/samsung/android/mateservice/util/UtilLog;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    invoke-static {v11, v12, v13}, Lcom/samsung/android/mateservice/util/UtilLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v8, v9, v11, v12}, Lcom/samsung/android/mateservice/common/Logger;->append(JLjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;->mHistoryMgr:Lcom/samsung/android/mateservice/common/Logger;

    const-string/jumbo v11, "AccessoryMgr"

    const-string/jumbo v12, "accessory state changed %s %s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/samsung/android/mateservice/util/UtilLog;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    invoke-static {v11, v12, v13}, Lcom/samsung/android/mateservice/util/UtilLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v8, v9, v11, v12}, Lcom/samsung/android/mateservice/common/Logger;->append(JLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v11, 0x0

    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;->mAgentSvcMgr:Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$ConnectionMgr;

    invoke-interface {v10}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$ConnectionMgr;->getClient()Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$AgentSvc;

    move-result-object v3

    if-eqz v3, :cond_4

    const v10, 0x210001

    move-object/from16 v0, p1

    invoke-interface {v3, v10, v0}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$AgentSvc;->execute(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v3}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$AgentSvc;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    if-eqz v11, :cond_3

    :try_start_2
    throw v11
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v4

    invoke-static {v4}, Lcom/samsung/android/mateservice/util/UtilLog;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_3
    const/4 v10, 0x0

    return-object v10

    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;->mHistoryMgr:Lcom/samsung/android/mateservice/common/Logger;

    const-string/jumbo v12, "AccessoryMgr"

    const-string/jumbo v13, "failed to connect agent svc"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v10, v12, v13}, Lcom/samsung/android/mateservice/common/Logger;->append(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v10

    :try_start_4
    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v11

    move-object/from16 v16, v11

    move-object v11, v10

    move-object/from16 v10, v16

    :goto_2
    if-eqz v3, :cond_5

    :try_start_5
    invoke-interface {v3}, Lcom/samsung/android/mateservice/agentsvc/AgentSvcContract$AgentSvc;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_5
    :goto_3
    if-eqz v11, :cond_7

    :try_start_6
    throw v11

    :catch_2
    move-exception v11

    goto :goto_1

    :catch_3
    move-exception v12

    if-nez v11, :cond_6

    move-object v11, v12

    goto :goto_3

    :cond_6
    if-eq v11, v12, :cond_5

    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    throw v10
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_1
    move-exception v10

    goto :goto_2
.end method

.method private getAccessoryList()Landroid/os/Bundle;
    .locals 5

    iget-object v1, p0, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;->mAccessories:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->get()Lcom/samsung/android/mateservice/common/BundleArgs$Builder;

    move-result-object v0

    const-string/jumbo v2, "accessoryList"

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;->mAccessories:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->put(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->build()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getHexString([BII)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    add-int v1, p2, p3

    if-eqz p1, :cond_0

    array-length v4, p1

    if-ge v4, v1, :cond_1

    :cond_0
    return-object v6

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v3, p2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    mul-int/lit8 v5, p3, 0x2

    if-eq v4, v5, :cond_4

    return-object v6

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getLength([B)I
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getUniqueKey([B)Ljava/util/UUID;
    .locals 1

    invoke-static {p1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method private update(ZLjava/util/UUID;Landroid/os/Bundle;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;->mAccessories:Ljava/util/HashMap;

    monitor-enter v2

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;->mAccessories:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v0

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;->mAccessories:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_3

    :goto_0
    monitor-exit v2

    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sparse-switch p3, :sswitch_data_0

    :cond_0
    return-object v3

    :sswitch_0
    const-string/jumbo v0, "AccessoryMgr"

    const-string/jumbo v1, "ActionGetAccessory"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;->getAccessoryList()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "AccessoryMgr"

    const-string/jumbo v1, "ActionAccessoryStateChanged"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;->accessoryStateChanged(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x110001 -> :sswitch_1
        0x120001 -> :sswitch_0
    .end sparse-switch
.end method

.method public getDump(Ljava/lang/StringBuilder;)V
    .locals 17

    const-string/jumbo v12, "\n---- active accessory info.\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;->mAccessories:Ljava/util/HashMap;

    monitor-enter v13

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;->mAccessories:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/UUID;

    if-eqz v2, :cond_0

    if-eqz v11, :cond_0

    const-string/jumbo v12, "timeStamp"

    const-wide/16 v14, -0x1

    invoke-virtual {v2, v12, v14, v15}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v14, -0x1

    cmp-long v12, v8, v14

    if-eqz v12, :cond_2

    invoke-static {v8, v9}, Lcom/samsung/android/mateservice/util/UtilLog;->getDateString(J)Ljava/lang/String;

    move-result-object v12

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/mateservice/util/UtilLog;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x2

    new-array v7, v12, [[B

    const-string/jumbo v12, "data"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v14, 0x0

    aput-object v12, v7, v14

    const-string/jumbo v12, "extraData"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v14, 0x1

    aput-object v12, v7, v14

    const/4 v12, 0x2

    new-array v10, v12, [Ljava/lang/String;

    const-string/jumbo v12, "\n\tdata: "

    const/4 v14, 0x0

    aput-object v12, v10, v14

    const-string/jumbo v12, "\n\textra: "

    const/4 v14, 0x1

    aput-object v12, v10, v14

    const/4 v6, 0x0

    const/4 v12, 0x0

    array-length v14, v7

    :goto_2
    if-ge v12, v14, :cond_3

    aget-object v3, v7, v12

    if-eqz v3, :cond_1

    array-length v15, v3

    if-lez v15, :cond_1

    aget-object v15, v10, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v15, v3

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v1, v15}, Lcom/samsung/android/mateservice/executable/ExecAccessoryMgr;->getHexString([BII)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/mateservice/util/UtilLog;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    const-string/jumbo v12, "wrong time"

    goto :goto_1

    :cond_3
    const-string/jumbo v12, "\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_4
    monitor-exit v13

    return-void
.end method
