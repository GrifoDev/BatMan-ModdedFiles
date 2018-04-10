.class public Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;
.super Ljava/lang/Object;
.source "XMLGrammarPoolImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field protected static final TABLE_SIZE:I = 0xb


# instance fields
.field protected fGrammarCount:I

.field protected fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

.field protected fPoolIsLocked:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    const/16 v0, 0xb

    new-array v0, v0, [Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput-boolean v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    new-array v0, p1, [Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput-boolean v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    return-void
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 2

    iget-boolean v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->putGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->clear()V

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aput-object v2, v1, v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    return-void
.end method

.method public containsGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v2

    const v4, 0x7fffffff

    and-int/2addr v4, v2

    iget-object v5, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v5, v5

    rem-int v3, v4, v5

    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v1, v4, v3

    :goto_0
    if-eqz v1, :cond_2

    iget v4, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    if-eq v4, v2, :cond_1

    :cond_0
    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    goto :goto_0

    :cond_1
    iget-object v4, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v4, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v0

    const/4 v4, 0x1

    return v4

    :cond_2
    monitor-exit v0

    return v6

    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v2

    const v4, 0x7fffffff

    and-int/2addr v4, v2

    iget-object v5, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v5, v5

    rem-int v3, v4, v5

    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v1, v4, v3

    :goto_0
    if-eqz v1, :cond_2

    iget v4, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    if-eq v4, v2, :cond_1

    :cond_0
    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    goto :goto_0

    :cond_1
    iget-object v4, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v4, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    monitor-exit v0

    return-object v4

    :cond_2
    monitor-exit v0

    return-object v6

    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public lockPool()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    return-void
.end method

.method public putGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 7

    iget-boolean v5, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/Grammar;->getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v3

    const v5, 0x7fffffff

    and-int/2addr v5, v3

    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v6, v6

    rem-int v4, v5, v6

    iget-object v5, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v2, v5, v4

    :goto_1
    if-eqz v2, :cond_3

    iget v5, v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    if-eq v5, v3, :cond_2

    :cond_1
    iget-object v2, v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    goto :goto_1

    :cond_2
    iget-object v5, v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v5, v1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object p1, v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    monitor-exit v0

    return-void

    :cond_3
    new-instance v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iget-object v5, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v5, v5, v4

    invoke-direct {v2, v3, v1, p1, v5}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;-><init>(ILmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/Grammar;Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;)V

    iget-object v5, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aput-object v2, v5, v4

    iget v5, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public removeGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v2

    const v6, 0x7fffffff

    and-int/2addr v6, v2

    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v7, v7

    rem-int v3, v6, v7

    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v1, v6, v3

    const/4 v4, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget v6, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    if-eq v6, v2, :cond_1

    :cond_0
    move-object v4, v1

    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    goto :goto_0

    :cond_1
    iget-object v6, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v6, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v4, :cond_2

    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iget-object v7, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aput-object v7, v6, v3

    :goto_1
    iget-object v5, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    const/4 v6, 0x0

    iput-object v6, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    iget v6, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    monitor-exit v0

    return-object v5

    :cond_2
    iget-object v6, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput-object v6, v4, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v8
.end method

.method public retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    return-object v0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 10

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v0

    :try_start_0
    iget-object v8, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v2, v8

    iget v8, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    new-array v6, v8, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v8, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v1, v8, v3

    move v5, v4

    :goto_1
    if-eqz v1, :cond_1

    iget-object v8, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-interface {v8}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    move v4, v5

    :goto_2
    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move v5, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v5, 0x1

    iget-object v8, v1, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    aput-object v8, v6, v5

    goto :goto_2

    :catchall_0
    move-exception v8

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    :cond_2
    :try_start_1
    new-array v7, v4, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v8, v7, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v7
.end method

.method public unlockPool()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    return-void
.end method
