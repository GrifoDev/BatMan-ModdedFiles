.class Lcom/android/launcher3/LauncherModel$LoaderTask$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel$LoaderTask;->onLoadComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

.field final synthetic val$taskState:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$LoaderTask;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$3;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iput p2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$3;->val$taskState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$3;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$3;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->access$800(Lcom/android/launcher3/LauncherModel$LoaderTask;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$3;->val$taskState:I

    if-eq v0, v2, :cond_2

    :cond_0
    monitor-exit v1

    :cond_1
    :goto_0
    return-void

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$3;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$600(Lcom/android/launcher3/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$3;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->access$900(Lcom/android/launcher3/LauncherModel$LoaderTask;)V

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$3;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$1000(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/DisableableAppCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/DisableableAppCache;->makeDisableableAppList()V

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$3;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$3;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/launcher3/LauncherModel;->access$702(Lcom/android/launcher3/LauncherModel;Z)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$3;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$600(Lcom/android/launcher3/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$3;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->access$1100(Lcom/android/launcher3/LauncherModel$LoaderTask;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
