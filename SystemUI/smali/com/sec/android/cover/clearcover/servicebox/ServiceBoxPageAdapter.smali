.class public Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "ServiceBoxPageAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCachedPages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;",
            ">;"
        }
    .end annotation
.end field

.field private mCircularCloneView:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ClearCover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Arguments cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCircularCloneView:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/internal/widget/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public getCount()I
    .locals 2

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 7

    const/4 v6, -0x2

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    monitor-exit v5

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    monitor-exit v5

    return v6

    :cond_3
    monitor-exit v5

    return v6

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 6

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p2, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCircularCloneView:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->getPage(Landroid/content/Context;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCircularCloneView:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCircularCloneView:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    const-string/jumbo v3, "clone"

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->setPageKey(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    const-string/jumbo v4, "clone"

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCircularCloneView:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCircularCloneView:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    :goto_0
    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ViewPager;->removeView(Landroid/view/View;)V

    :cond_1
    check-cast p1, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ViewPager;->addView(Landroid/view/View;)V

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->getPage(Landroid/content/Context;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setExpanded(Z)V
    .locals 7

    sget-object v4, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setExpanded: expanded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;

    invoke-virtual {v2, p1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->setExpanded(Z)V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    invoke-virtual {v4, p1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->setExpandState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    monitor-exit v5

    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public updateRefreshView(Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->mCachedPages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/RemoteViewServiceBoxPageView;->refreshRemoteView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
