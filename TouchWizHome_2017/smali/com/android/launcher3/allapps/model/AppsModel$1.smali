.class Lcom/android/launcher3/allapps/model/AppsModel$1;
.super Ljava/lang/Object;
.source "AppsModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsModel;->removeUnRestoredItems(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsModel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsModel$1;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    sget-object v2, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    const-string v3, "run removeUnRestoredItems"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsModel$1;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsModel$1;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/model/AppsModel;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher3/allapps/model/AppsModel;->access$300(Lcom/android/launcher3/allapps/model/AppsModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    sget-object v3, Lcom/android/launcher3/allapps/model/AppsModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This item is not restored. remove : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsModel$1;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-static {v2}, Lcom/android/launcher3/allapps/model/AppsModel;->access$400(Lcom/android/launcher3/allapps/model/AppsModel;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItemsFromDatabase(Ljava/util/ArrayList;)V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsModel$1;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/launcher3/allapps/model/AppsModel;->access$500(Lcom/android/launcher3/allapps/model/AppsModel;Ljava/util/ArrayList;)V

    return-void
.end method
