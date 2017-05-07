.class public abstract Lcom/android/launcher3/common/model/DataProvider;
.super Ljava/lang/Object;
.source "DataProvider.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/model/DataProvider$DataInterface;
    }
.end annotation


# static fields
.field static final BASE_MIGRATION_VERSION:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "DataProvider"

.field protected static sContext:Landroid/content/Context;

.field static sDb:Landroid/database/sqlite/SQLiteDatabase;


# instance fields
.field mMaxItemId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/common/model/DataProvider;->mMaxItemId:J

    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/android/launcher3/common/model/DataProvider;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "DataProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataProvider called twice! old context ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/common/model/DataProvider;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new context ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput-object p0, Lcom/android/launcher3/common/model/DataProvider;->sContext:Landroid/content/Context;

    return-void
.end method

.method public static setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/common/model/DataProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    sput-object p0, Lcom/android/launcher3/common/model/DataProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized generateNewItemId()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/launcher3/common/model/DataProvider;->mMaxItemId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max item id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/android/launcher3/common/model/DataProvider;->mMaxItemId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/launcher3/common/model/DataProvider;->mMaxItemId:J

    iget-wide v0, p0, Lcom/android/launcher3/common/model/DataProvider;->mMaxItemId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0
.end method

.method public getMaxId(Ljava/lang/String;)J
    .locals 12

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "MAX(_id)"

    aput-object v0, v2, v9

    sget-object v0, Lcom/android/launcher3/common/model/DataProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const-wide/16 v10, -0x1

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: could not query max id in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-wide v10
.end method

.method public getMaxItemId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/launcher3/common/model/DataProvider;->mMaxItemId:J

    return-wide v0
.end method

.method public initializeMaxItemId(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/model/DataProvider;->getMaxId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setMaxItemId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/launcher3/common/model/DataProvider;->mMaxItemId:J

    return-void
.end method
