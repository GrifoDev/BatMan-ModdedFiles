.class public Lcom/android/server/am/UserStateListenerRoll;
.super Ljava/lang/Object;
.source "UserStateListenerRoll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UserStateListenerRoll$Callback;
    }
.end annotation


# static fields
.field public static final CALLBACK_CODE_BASE:I = 0x0

.field public static final CALLBACK_CODE_START_USER:I = 0x1

.field public static final CALLBACK_CODE_STOP_USER:I = 0x2

.field public static final CALLBACK_CODE_UNLOCK_USER:I = 0x3

.field public static final CALLBACK_CODE_USER_STARTED:I = 0x4

.field public static final CALLBACK_CODE_USER_STOPPED:I = 0x5

.field public static final CALLBACK_CODE_USER_UNLOCKED:I = 0x6

.field private static final TAG:Ljava/lang/String; = "UserStateListenerRoll"


# instance fields
.field mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/am/UserStateListenerRoll$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UserStateListenerRoll;->mCallbacks:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/UserStateListenerRoll;->mDestroyed:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 5

    iget-object v3, p0, Lcom/android/server/am/UserStateListenerRoll;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserStateListenerRoll;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/UserStateListenerRoll;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserStateListenerRoll$Callback;

    iget-object v2, v0, Lcom/android/server/am/UserStateListenerRoll$Callback;->mTarget:Landroid/os/IUserStateListener;

    invoke-interface {v2}, Landroid/os/IUserStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/UserStateListenerRoll;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/UserStateListenerRoll;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public disenroll(Landroid/os/IUserStateListener;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/am/UserStateListenerRoll;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserStateListenerRoll;->mCallbacks:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/os/IUserStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserStateListenerRoll$Callback;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/UserStateListenerRoll$Callback;->mTarget:Landroid/os/IUserStateListener;

    invoke-interface {v1}, Landroid/os/IUserStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    return v4

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public enroll(Landroid/os/IUserStateListener;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/am/UserStateListenerRoll;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v4

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/am/UserStateListenerRoll;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/os/IUserStateListener;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    new-instance v1, Lcom/android/server/am/UserStateListenerRoll$Callback;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/UserStateListenerRoll$Callback;-><init>(Lcom/android/server/am/UserStateListenerRoll;Landroid/os/IUserStateListener;)V

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v3, p0, Lcom/android/server/am/UserStateListenerRoll;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x1

    monitor-exit v4

    return v3

    :catch_0
    move-exception v2

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public size()I
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/UserStateListenerRoll;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/UserStateListenerRoll;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I
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

.method public update(II)V
    .locals 7

    iget-object v5, p0, Lcom/android/server/am/UserStateListenerRoll;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/UserStateListenerRoll;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    :goto_0
    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/am/UserStateListenerRoll;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserStateListenerRoll$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch p2, :pswitch_data_0

    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :pswitch_0
    :try_start_1
    iget-object v4, v0, Lcom/android/server/am/UserStateListenerRoll$Callback;->mTarget:Landroid/os/IUserStateListener;

    invoke-interface {v4, p1}, Landroid/os/IUserStateListener;->onStartUser(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v4, "UserStateListenerRoll"

    const-string/jumbo v6, "Listener might be dead..."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    iget-object v4, v0, Lcom/android/server/am/UserStateListenerRoll$Callback;->mTarget:Landroid/os/IUserStateListener;

    invoke-interface {v4}, Landroid/os/IUserStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v0, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v4, p0, Lcom/android/server/am/UserStateListenerRoll;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :pswitch_1
    :try_start_3
    iget-object v4, v0, Lcom/android/server/am/UserStateListenerRoll$Callback;->mTarget:Landroid/os/IUserStateListener;

    invoke-interface {v4, p1}, Landroid/os/IUserStateListener;->onStopUser(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :pswitch_2
    :try_start_5
    iget-object v4, v0, Lcom/android/server/am/UserStateListenerRoll$Callback;->mTarget:Landroid/os/IUserStateListener;

    invoke-interface {v4, p1}, Landroid/os/IUserStateListener;->onUnlockUser(I)V

    goto :goto_1

    :pswitch_3
    iget-object v4, v0, Lcom/android/server/am/UserStateListenerRoll$Callback;->mTarget:Landroid/os/IUserStateListener;

    invoke-interface {v4, p1}, Landroid/os/IUserStateListener;->onUserStarted(I)V

    goto :goto_1

    :pswitch_4
    iget-object v4, v0, Lcom/android/server/am/UserStateListenerRoll$Callback;->mTarget:Landroid/os/IUserStateListener;

    invoke-interface {v4, p1}, Landroid/os/IUserStateListener;->onUserStopped(I)V

    goto :goto_1

    :pswitch_5
    iget-object v4, v0, Lcom/android/server/am/UserStateListenerRoll$Callback;->mTarget:Landroid/os/IUserStateListener;

    invoke-interface {v4, p1}, Landroid/os/IUserStateListener;->onUserUnlocked(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_0
    monitor-exit v5

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
