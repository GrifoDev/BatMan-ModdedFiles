.class Lcom/android/launcher3/allapps/model/AppsLoader$19;
.super Ljava/lang/Object;
.source "AppsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsLoader;->addOrUpdater([Ljava/lang/String;Ljava/util/HashMap;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

.field final synthetic val$addedApps:Ljava/util/ArrayList;

.field final synthetic val$addedAppsScreensFinal:Ljava/util/ArrayList;

.field final synthetic val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

.field final synthetic val$packages:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;[Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$19;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iput-object p2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$19;->val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    iput-object p3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$19;->val$addedApps:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/allapps/model/AppsLoader$19;->val$packages:[Ljava/lang/String;

    iput-object p5, p0, Lcom/android/launcher3/allapps/model/AppsLoader$19;->val$addedAppsScreensFinal:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$19;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    # invokes: Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    invoke-static {v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$1700(Lcom/android/launcher3/allapps/model/AppsLoader;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$19;->val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$19;->val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    if-ne v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$19;->val$addedApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    const-string v4, "AppsLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOrUpdater addItem title : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , rank : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " screen : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$19;->val$addedApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$19;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCurrentComparator()Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$19;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCurrentComparator()Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/allapps/model/AppsLoader$19;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsInApps()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/allapps/model/AppsLoader$19;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    # getter for: Lcom/android/launcher3/allapps/model/AppsLoader;->mMaxItemsPerPage:I
    invoke-static {v5}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$200(Lcom/android/launcher3/allapps/model/AppsLoader;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;->normalize(Ljava/util/ArrayList;IZ)I

    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$19;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->getCurrentComparator()Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_CUSTOM_TIDE_UP_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$19;->val$addedApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    # getter for: Lcom/android/launcher3/allapps/model/AppsLoader;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$1800()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    iget-object v4, p0, Lcom/android/launcher3/allapps/model/AppsLoader$19;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    # getter for: Lcom/android/launcher3/allapps/model/AppsLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;
    invoke-static {v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$1900(Lcom/android/launcher3/allapps/model/AppsLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItem(Landroid/content/ContentValues;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$19;->val$packages:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/launcher3/allapps/model/AppsLoader$19;->val$addedAppsScreensFinal:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/launcher3/allapps/model/AppsLoader$19;->val$addedApps:Ljava/util/ArrayList;

    invoke-interface {v0, v3, v4, v5}, Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;->bindAppsAddedWithPostPosition([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
