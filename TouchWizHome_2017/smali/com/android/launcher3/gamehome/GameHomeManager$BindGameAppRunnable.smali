.class Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;
.super Ljava/lang/Object;
.source "GameHomeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/gamehome/GameHomeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindGameAppRunnable"
.end annotation


# instance fields
.field private mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/launcher3/gamehome/GameHomeManager;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/gamehome/GameHomeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;->this$0:Lcom/android/launcher3/gamehome/GameHomeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/gamehome/GameHomeManager;Lcom/android/launcher3/gamehome/GameHomeManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;-><init>(Lcom/android/launcher3/gamehome/GameHomeManager;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;->mRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;->mRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;->mRunnable:Ljava/lang/Runnable;

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;->this$0:Lcom/android/launcher3/gamehome/GameHomeManager;

    invoke-virtual {v1}, Lcom/android/launcher3/gamehome/GameHomeManager;->bindGameAppsVisibility()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setRunnable(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/launcher3/gamehome/GameHomeManager$BindGameAppRunnable;->mRunnable:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
