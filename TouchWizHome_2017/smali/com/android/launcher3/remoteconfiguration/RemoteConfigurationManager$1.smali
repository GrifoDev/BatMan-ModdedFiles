.class Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager$1;
.super Ljava/lang/Object;
.source "RemoteConfigurationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->setCompleteRunnableForWait()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager$1;->this$0:Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager$1;->this$0:Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;

    invoke-static {v0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->access$000(Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager$1;->this$0:Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->access$102(Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager$1;->this$0:Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;

    invoke-static {v0}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->access$000(Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
