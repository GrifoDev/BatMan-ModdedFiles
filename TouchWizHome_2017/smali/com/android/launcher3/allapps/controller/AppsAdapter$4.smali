.class Lcom/android/launcher3/allapps/controller/AppsAdapter$4;
.super Ljava/lang/Object;
.source "AppsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsAdapter;->notifyUpdate(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$4;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$4;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->access$000(Lcom/android/launcher3/allapps/controller/AppsAdapter;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AppsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waitNextUpdate2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$4;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v4, v4, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v2, "AppsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyupdate start : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$4;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v4, v4, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$4;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$4;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v3, v3, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/model/AppsModel;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->access$100(Lcom/android/launcher3/allapps/controller/AppsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$4;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v3, v2, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mPendingUdpateItems:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$4;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v2, v2, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mPendingUdpateItems:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$4;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v2, v2, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mPendingUdpateItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$4;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->updateItemsAndContents(Ljava/util/ArrayList;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "updateItem : "

    invoke-static {v2, v1}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->debugItemInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$4;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v2, v2, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mListener:Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;

    invoke-interface {v2, v1}, Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;->updateApps(Ljava/util/ArrayList;)V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$4;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->getFolderItems(Ljava/util/ArrayList;)Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->updateFolderContents(Lcom/android/launcher3/util/LongArrayMap;)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$4;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v2, v2, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mFirstLoaded:Z

    const-string v2, "AppsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyupdate end : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$4;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v4, v4, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
