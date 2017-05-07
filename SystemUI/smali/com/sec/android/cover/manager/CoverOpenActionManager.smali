.class public Lcom/sec/android/cover/manager/CoverOpenActionManager;
.super Ljava/lang/Object;
.source "CoverOpenActionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/manager/CoverOpenActionManager$CoverOpenAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mStaticLock:Ljava/lang/Object;

.field private static sInstance:Lcom/sec/android/cover/manager/CoverOpenActionManager;


# instance fields
.field private mAction:Lcom/sec/android/cover/manager/CoverOpenActionManager$CoverOpenAction;

.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/manager/CoverOpenActionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/manager/CoverOpenActionManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/cover/manager/CoverOpenActionManager;->mStaticLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverOpenActionManager;->mLock:Ljava/lang/Object;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverOpenActionManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverOpenActionManager;
    .locals 2

    sget-object v1, Lcom/sec/android/cover/manager/CoverOpenActionManager;->mStaticLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/cover/manager/CoverOpenActionManager;->sInstance:Lcom/sec/android/cover/manager/CoverOpenActionManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/cover/manager/CoverOpenActionManager;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/CoverOpenActionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/manager/CoverOpenActionManager;->sInstance:Lcom/sec/android/cover/manager/CoverOpenActionManager;

    :cond_0
    sget-object v0, Lcom/sec/android/cover/manager/CoverOpenActionManager;->sInstance:Lcom/sec/android/cover/manager/CoverOpenActionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverOpenActionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverOpenActionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->isShowingPopupDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverOpenActionManager;->mAction:Lcom/sec/android/cover/manager/CoverOpenActionManager$CoverOpenAction;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/manager/CoverOpenActionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCoverOpened: action performed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/manager/CoverOpenActionManager;->mAction:Lcom/sec/android/cover/manager/CoverOpenActionManager$CoverOpenAction;

    invoke-interface {v3}, Lcom/sec/android/cover/manager/CoverOpenActionManager$CoverOpenAction;->getActionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverOpenActionManager;->mAction:Lcom/sec/android/cover/manager/CoverOpenActionManager$CoverOpenAction;

    invoke-interface {v0}, Lcom/sec/android/cover/manager/CoverOpenActionManager$CoverOpenAction;->onCoverOpened()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverOpenActionManager;->mAction:Lcom/sec/android/cover/manager/CoverOpenActionManager$CoverOpenAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setCoverOpenAction(Lcom/sec/android/cover/manager/CoverOpenActionManager$CoverOpenAction;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverOpenActionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/sec/android/cover/manager/CoverOpenActionManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCoverOpenAction: action set: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-static {v2, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverOpenActionManager;->mAction:Lcom/sec/android/cover/manager/CoverOpenActionManager$CoverOpenAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/sec/android/cover/manager/CoverOpenActionManager$CoverOpenAction;->getActionDescription()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
