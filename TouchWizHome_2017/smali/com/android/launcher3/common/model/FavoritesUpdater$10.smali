.class Lcom/android/launcher3/common/model/FavoritesUpdater$10;
.super Ljava/lang/Object;
.source "FavoritesUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/FavoritesUpdater;->addItems(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

.field final synthetic val$addToMap:Z

.field final synthetic val$items:Ljava/util/ArrayList;

.field final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;

.field final synthetic val$updates:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Ljava/util/List;ZLjava/util/ArrayList;[Ljava/lang/StackTraceElement;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$10;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iput-object p2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$10;->val$updates:Ljava/util/List;

    iput-boolean p3, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$10;->val$addToMap:Z

    iput-object p4, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$10;->val$items:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$10;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$10;->val$updates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$10;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-static {v1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$400(Lcom/android/launcher3/common/model/FavoritesUpdater;)Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$10;->val$updates:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->updateAppItems(Ljava/util/List;)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$10;->val$addToMap:Z

    if-eqz v1, :cond_2

    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$10;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    iget-object v3, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$10;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v4, v5, v0, v3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$000(JLcom/android/launcher3/common/base/item/ItemInfo;[Ljava/lang/StackTraceElement;)V

    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    return-void
.end method
