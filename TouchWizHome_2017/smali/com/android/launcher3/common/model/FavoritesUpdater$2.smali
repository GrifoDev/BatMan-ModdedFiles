.class Lcom/android/launcher3/common/model/FavoritesUpdater$2;
.super Ljava/lang/Object;
.source "FavoritesUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

.field final synthetic val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ContentValues;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$2;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iput-object p2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$2;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object p3, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$2;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v4, 0x0

    sget-object v0, Lcom/android/launcher3/common/model/DataUpdater;->sContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$2;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v2, v3}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$2;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$2;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$2;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$2;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x66

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$2;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$100(Lcom/android/launcher3/common/model/FavoritesUpdater;)Lcom/android/launcher3/common/model/DataLoader;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$2;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/model/DataLoader;->containPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$2;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$100(Lcom/android/launcher3/common/model/FavoritesUpdater;)Lcom/android/launcher3/common/model/DataLoader;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$2;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/model/DataLoader;->updatePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    :goto_0
    monitor-exit v1

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$2;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$100(Lcom/android/launcher3/common/model/FavoritesUpdater;)Lcom/android/launcher3/common/model/DataLoader;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$2;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/model/DataLoader;->addPagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$2;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$100(Lcom/android/launcher3/common/model/FavoritesUpdater;)Lcom/android/launcher3/common/model/DataLoader;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$2;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/model/DataLoader;->removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
