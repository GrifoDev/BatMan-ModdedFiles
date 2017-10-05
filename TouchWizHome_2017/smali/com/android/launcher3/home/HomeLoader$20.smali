.class Lcom/android/launcher3/home/HomeLoader$20;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->removeWorkspaceItem(ZILjava/lang/String;Landroid/content/Intent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$appWidgetId:I

.field final synthetic val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

.field final synthetic val$duplicate:Z

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$isHomeOnlyMode:Z

.field final synthetic val$isWidget:Z

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;ZLjava/lang/String;IZLandroid/content/Intent;ZLcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$20;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-boolean p2, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$isWidget:Z

    iput-object p3, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$title:Ljava/lang/String;

    iput p4, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$appWidgetId:I

    iput-boolean p5, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$isHomeOnlyMode:Z

    iput-object p6, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$intent:Landroid/content/Intent;

    iput-boolean p7, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$duplicate:Z

    iput-object p8, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "HomeLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeWorkspaceItem is widget "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$isWidget:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " title "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$9100()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v8, p0, Lcom/android/launcher3/home/HomeLoader$20;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v8}, Lcom/android/launcher3/home/HomeLoader;->access$6900(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-boolean v9, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$isWidget:Z

    if-eqz v9, :cond_1

    iget v9, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    move-object v4, v0

    iget v9, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$appWidgetId:I

    iget v10, v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne v9, v10, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :try_start_1
    iget-boolean v9, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$isHomeOnlyMode:Z

    if-eqz v9, :cond_8

    iget v9, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-eq v9, v5, :cond_7

    move v3, v5

    :goto_1
    if-nez v3, :cond_0

    iget-object v9, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$intent:Landroid/content/Intent;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_2
    iget-object v9, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$intent:Landroid/content/Intent;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$title:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$title:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-boolean v9, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$duplicate:Z

    if-nez v9, :cond_0

    :cond_5
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "HomeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " workspace item will be removed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/launcher3/home/HomeLoader$20;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v5}, Lcom/android/launcher3/home/HomeLoader;->access$9200(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItemsFromDatabase(Ljava/util/ArrayList;)V

    iget-object v5, p0, Lcom/android/launcher3/home/HomeLoader$20;->this$0:Lcom/android/launcher3/home/HomeLoader;

    new-instance v6, Lcom/android/launcher3/home/HomeLoader$20$1;

    invoke-direct {v6, p0, v2}, Lcom/android/launcher3/home/HomeLoader$20$1;-><init>(Lcom/android/launcher3/home/HomeLoader$20;Ljava/util/ArrayList;)V

    invoke-static {v5, v6}, Lcom/android/launcher3/home/HomeLoader;->access$9300(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V

    :cond_6
    return-void

    :cond_7
    move v3, v6

    goto/16 :goto_1

    :cond_8
    :try_start_2
    iget v9, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-eq v9, v5, :cond_9

    iget v9, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_9

    move v3, v5

    goto/16 :goto_1

    :cond_9
    move v3, v6

    goto/16 :goto_1
.end method
