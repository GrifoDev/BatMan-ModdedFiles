.class Lcom/android/launcher3/home/HomeLoader$40;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->updateContactShortcutInfo(JLandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$id:J

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;JLandroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$40;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-wide p2, p0, Lcom/android/launcher3/home/HomeLoader$40;->val$id:J

    iput-object p4, p0, Lcom/android/launcher3/home/HomeLoader$40;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$9500()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$9600()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/launcher3/home/HomeLoader$40;->val$id:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v4, v3, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_0

    iget v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    move-object v0, v3

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v2, v0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeLoader$40;->val$intent:Landroid/content/Intent;

    iput-object v4, v2, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    const-string v4, "HomeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateContactShortcutInfo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/launcher3/home/HomeLoader$40;->val$id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
