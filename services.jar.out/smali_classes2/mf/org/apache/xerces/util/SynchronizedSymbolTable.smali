.class public final Lmf/org/apache/xerces/util/SynchronizedSymbolTable;
.super Lmf/org/apache/xerces/util/SymbolTable;
.source "SynchronizedSymbolTable.java"


# instance fields
.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/util/SymbolTable;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-void
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, p1, p2, p3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsSymbol(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/util/SymbolTable;->containsSymbol(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsSymbol([CII)Z
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, p1, p2, p3}, Lmf/org/apache/xerces/util/SymbolTable;->containsSymbol([CII)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
