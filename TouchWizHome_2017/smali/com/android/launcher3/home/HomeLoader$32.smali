.class Lcom/android/launcher3/home/HomeLoader$32;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->removeUnRestoredItems(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$32;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$32;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeLoader$32;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v4}, Lcom/android/launcher3/home/HomeLoader;->access$6900(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/launcher3/home/HomeLoader;->access$9400(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    const-string v4, "HomeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This item is not restored. remove : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$32;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v3}, Lcom/android/launcher3/home/HomeLoader;->access$9500(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItemsFromDatabase(Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$32;->this$0:Lcom/android/launcher3/home/HomeLoader;

    invoke-static {v3}, Lcom/android/launcher3/home/HomeLoader;->access$1100(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$32;->this$0:Lcom/android/launcher3/home/HomeLoader;

    new-instance v4, Lcom/android/launcher3/home/HomeLoader$32$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/launcher3/home/HomeLoader$32$1;-><init>(Lcom/android/launcher3/home/HomeLoader$32;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;)V

    invoke-static {v3, v4}, Lcom/android/launcher3/home/HomeLoader;->access$9700(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
