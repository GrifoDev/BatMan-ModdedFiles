.class public Lcom/android/server/utils/sysfwutil/DexObserver;
.super Ljava/lang/Object;
.source "DexObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/utils/sysfwutil/DexObserver$1;
    }
.end annotation


# static fields
.field private static final CCIC_DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/sec/ccic"

.field private static final TAG:Ljava/lang/String; = "DexObserverFW"


# instance fields
.field private mDexMode:Z

.field private final mDexStateLock:Ljava/lang/Object;

.field private final mDexUEventObserver:Landroid/os/UEventObserver;

.field private final mListeners:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque",
            "<",
            "Lcom/android/server/utils/sysfwutil/DexConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTestModeOn:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/utils/sysfwutil/DexObserver;)Ljava/util/concurrent/BlockingDeque;
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mListeners:Ljava/util/concurrent/BlockingDeque;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/utils/sysfwutil/DexObserver;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/utils/sysfwutil/DexObserver;->setDexState(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexMode:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexStateLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mListeners:Ljava/util/concurrent/BlockingDeque;

    iput-boolean v1, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mTestModeOn:Z

    new-instance v0, Lcom/android/server/utils/sysfwutil/DexObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/sysfwutil/DexObserver$1;-><init>(Lcom/android/server/utils/sysfwutil/DexObserver;)V

    iput-object v0, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexUEventObserver:Landroid/os/UEventObserver;

    const-string/jumbo v1, "DexObserverFW"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Started"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mTestModeOn:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, " TestModeOn"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexUEventObserver:Landroid/os/UEventObserver;

    const-string/jumbo v1, "DEVPATH=/devices/virtual/sec/ccic"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private setDexMode(Z)V
    .locals 4

    iget-boolean v1, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mTestModeOn:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "DexObserverFW"

    const-string/jumbo v2, "setDexMode() : delay ++"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x7530

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v1, "DexObserverFW"

    const-string/jumbo v2, "setDexMode() : delay --"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexMode:Z

    iget-boolean v1, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexMode:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/server/utils/sysfwutil/DexObserver$2;

    const-string/jumbo v3, "notifyListeners"

    invoke-direct {v1, p0, v3}, Lcom/android/server/utils/sysfwutil/DexObserver$2;-><init>(Lcom/android/server/utils/sysfwutil/DexObserver;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/utils/sysfwutil/DexObserver$2;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private setDexState(I)V
    .locals 3

    const-string/jumbo v0, "DexObserverFW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDockState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/utils/sysfwutil/DexObserver;->setDexMode(Z)V

    :goto_0
    return-void

    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/utils/sysfwutil/DexObserver;->setDexMode(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addListener(Lcom/android/server/utils/sysfwutil/DexConnectionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mListeners:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current DexModeObserver state:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isDexModeOn()Z
    .locals 4

    iget-object v1, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "DexObserverFW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDexModeOn() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/utils/sysfwutil/DexObserver;->mDexMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
