.class Lcom/android/launcher3/allapps/controller/AppsAdapter$2;
.super Ljava/lang/Object;
.source "AppsAdapter.java"

# interfaces
.implements Lcom/android/launcher3/common/view/OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/controller/AppsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/View;Landroid/view/View;Z)V
    .locals 3

    if-nez p3, :cond_3

    if-nez p2, :cond_3

    const-string v0, "AppsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid case : try inflate again and remove stub : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/allapps/view/Stub;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v2, v1, p2}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/allapps/view/Stub;->replaceView(Landroid/view/View;Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mStub:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mStub:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mFirstLoadStub:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mFirstLoadStub:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mFirstLoadStub:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mDataHolder:Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;

    iget-boolean v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapterProvider$DataHolder;->mDestroyed:Z

    if-nez v0, :cond_2

    const-string v0, "AppsAdapter"

    const-string v1, "onLauncherBindingItemsCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    iget-object v0, v0, Lcom/android/launcher3/allapps/controller/AppsAdapter;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/model/AppsModel;->onLauncherBindingItemsCompleted()V

    :cond_2
    return-void

    :cond_3
    if-nez p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsAdapter$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v1, v0, p2}, Lcom/android/launcher3/allapps/controller/AppsAdapter;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Landroid/view/View;

    goto :goto_0
.end method
