.class Lcom/android/launcher3/common/model/FavoritesUpdater$7;
.super Ljava/lang/Object;
.source "FavoritesUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteFolderContentsFromDatabase(Lcom/android/launcher3/folder/FolderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

.field final synthetic val$info:Lcom/android/launcher3/folder/FolderInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iput-object p2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;->val$info:Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    sget-object v2, Lcom/android/launcher3/common/model/DataUpdater;->sContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;->val$info:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v4, v3, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-static {v4, v5}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-object v4, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;->val$info:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v4, v4, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-object v4, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;->val$info:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v4, v4, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-static {v2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$100(Lcom/android/launcher3/common/model/FavoritesUpdater;)Lcom/android/launcher3/common/model/DataLoader;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;->val$info:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/model/DataLoader;->removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iget-object v4, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;->val$info:Lcom/android/launcher3/folder/FolderInfo;

    invoke-static {v2, v4}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$200(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v2, Lcom/android/launcher3/common/model/DataUpdater;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;->val$info:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/common/customer/PostPositionController;->deleteFolder(J)V

    sget-object v2, Lcom/android/launcher3/common/model/DataUpdater;->sContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "container="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;->val$info:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v6, v5, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$7;->val$info:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    sget-object v4, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method
