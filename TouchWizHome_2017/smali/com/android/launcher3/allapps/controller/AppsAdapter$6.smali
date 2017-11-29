.class Lcom/android/launcher3/allapps/controller/AppsAdapter$6;
.super Ljava/lang/Object;
.source "AppsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsAdapter;->removeAppsItems(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

.field final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsAdapter;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$6;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$6;->val$items:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v1, "AppsAdapter"

    const-string v2, "removeAppsItems"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$6;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$6;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v1, v1, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$6;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v1, v1, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$6;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->removeViewAndReorder(Lcom/android/launcher3/common/base/item/IconInfo;)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$6;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method
