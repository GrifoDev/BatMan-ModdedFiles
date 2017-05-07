.class Lcom/android/launcher3/allapps/model/AppsLoader$5;
.super Ljava/lang/Object;
.source "AppsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsLoader;->loadRemainedApps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsLoader;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$5;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iput-object p2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$5;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    # getter for: Lcom/android/launcher3/allapps/model/AppsLoader;->sIsLoadingAndBindingWorkspace:Z
    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/launcher3/allapps/model/AppsLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$1100()Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    # getter for: Lcom/android/launcher3/allapps/model/AppsLoader;->sBindCompleteRunnables:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$1200()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$5;->val$r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsLoader$5;->val$r:Ljava/lang/Runnable;

    # invokes: Lcom/android/launcher3/allapps/model/AppsLoader;->runOnWorkerThread(Ljava/lang/Runnable;)V
    invoke-static {v0}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$1300(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
