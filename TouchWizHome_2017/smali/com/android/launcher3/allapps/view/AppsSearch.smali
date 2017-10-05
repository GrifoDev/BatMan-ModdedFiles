.class public Lcom/android/launcher3/allapps/view/AppsSearch;
.super Ljava/lang/Object;
.source "AppsSearch.java"


# instance fields
.field private final mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

.field private mSupportAppSearch:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 6

    const v3, 0x7f110027

    const v4, 0x7f110026

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportAppsSearch()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSupportAppSearch:Z

    iget-boolean v2, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSupportAppSearch:Z

    if-eqz v2, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    iput-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v2, p2}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->setController(Lcom/android/launcher3/allapps/controller/AppsController;)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v2}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->getContainerView()Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSupportAppSearch:Z

    if-nez v2, :cond_1

    move v0, v3

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1
.end method


# virtual methods
.method public changeColorAndBackground(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v0, p1}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->changeColorAndBackground(Z)V

    return-void
.end method

.method public getAppsSearchBarView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->getAppsSearchBarView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->getContainerView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hidePopupMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->hidePopupMenu()V

    return-void
.end method

.method public launchSfinder()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->launchSfinder()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->onConfigurationChangedIfNeeded()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->resume()V

    return-void
.end method

.method public setSearchBarVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearch;->getAppsSearchBarView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setTranslateY(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearch;->getContainerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public showPopupMenu()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearch;->getContainerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->showPopupMenu()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stageExit(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v0, p1}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->stageExit(Lcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method public switchInternalState(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->switchInternalState(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public updateRecentApp(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v0, p1}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->updateRecentApp(Lcom/android/launcher3/common/base/item/IconInfo;)V

    return-void
.end method
