.class Lcom/android/launcher3/home/HomeLoader$46;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->removeHotseatItemByIndex(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$46;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput p2, p0, Lcom/android/launcher3/home/HomeLoader$46;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$13000()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$46;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v3}, Lcom/android/launcher3/home/HomeLoader;->access$12700(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v3, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v3, :cond_1

    move-object v0, v2

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v3, v0

    iget-boolean v3, v3, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-nez v3, :cond_0

    :cond_1
    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget v3, p0, Lcom/android/launcher3/home/HomeLoader$46;->val$index:I

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$46;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v3, v2}, Lcom/android/launcher3/home/HomeLoader;->access$13100(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    :cond_2
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
