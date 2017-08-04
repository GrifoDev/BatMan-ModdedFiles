.class final Lcom/android/launcher3/common/model/FavoritesUpdater$8;
.super Ljava/lang/Object;
.source "FavoritesUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/FavoritesUpdater;->checkItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

.field final synthetic val$itemId:J

.field final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;


# direct methods
.method constructor <init>(JLcom/android/launcher3/common/base/item/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 1

    iput-wide p1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$8;->val$itemId:J

    iput-object p3, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$8;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object p4, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$8;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$8;->val$itemId:J

    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$8;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v4, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$8;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v2, v3, v0, v4}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$000(JLcom/android/launcher3/common/base/item/ItemInfo;[Ljava/lang/StackTraceElement;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
