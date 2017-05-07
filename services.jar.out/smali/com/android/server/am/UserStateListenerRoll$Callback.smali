.class final Lcom/android/server/am/UserStateListenerRoll$Callback;
.super Ljava/lang/Object;
.source "UserStateListenerRoll.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UserStateListenerRoll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final mTarget:Landroid/os/IUserStateListener;

.field final synthetic this$0:Lcom/android/server/am/UserStateListenerRoll;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserStateListenerRoll;Landroid/os/IUserStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/UserStateListenerRoll$Callback;->this$0:Lcom/android/server/am/UserStateListenerRoll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/UserStateListenerRoll$Callback;->mTarget:Landroid/os/IUserStateListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/UserStateListenerRoll$Callback;->this$0:Lcom/android/server/am/UserStateListenerRoll;

    iget-object v1, v0, Lcom/android/server/am/UserStateListenerRoll;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/UserStateListenerRoll$Callback;->this$0:Lcom/android/server/am/UserStateListenerRoll;

    iget-object v0, v0, Lcom/android/server/am/UserStateListenerRoll;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/am/UserStateListenerRoll$Callback;->mTarget:Landroid/os/IUserStateListener;

    invoke-interface {v2}, Landroid/os/IUserStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
