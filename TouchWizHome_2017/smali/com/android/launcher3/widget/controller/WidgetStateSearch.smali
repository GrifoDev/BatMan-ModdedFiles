.class public Lcom/android/launcher3/widget/controller/WidgetStateSearch;
.super Lcom/android/launcher3/widget/controller/WidgetState;
.source "WidgetStateSearch.java"

# interfaces
.implements Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;
.implements Lcom/android/launcher3/widget/view/WidgetSearchbar$MenuActionListener;


# instance fields
.field private mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/controller/WidgetState;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public applySearchResult(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    instance-of v0, v0, Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    check-cast v0, Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;->applySearchResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected changeColorForBg(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->changeColorAndBackground(Z)V

    return-void
.end method

.method public changeStateToUninstall()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->UNINSTALL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-interface {v0, v1}, Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;->notifyChangeState(Lcom/android/launcher3/widget/controller/WidgetState$State;)V

    :cond_0
    return-void
.end method

.method public enter(Lcom/android/launcher3/widget/controller/WidgetState;Landroid/animation/AnimatorSet;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/widget/controller/WidgetState;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->UNINSTALL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setSearchListener(Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setMenuActionListener(Lcom/android/launcher3/widget/view/WidgetSearchbar$MenuActionListener;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->enter(Lcom/android/launcher3/widget/controller/WidgetState$State;Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public exit(Lcom/android/launcher3/widget/controller/WidgetState;Landroid/animation/AnimatorSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/launcher3/widget/controller/WidgetState;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->UNINSTALL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setVisibility(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/widget/controller/WidgetState;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/widget/controller/WidgetState;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->onStageExit()V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->exit(Lcom/android/launcher3/widget/controller/WidgetState$State;Landroid/animation/AnimatorSet;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setSearchListener(Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setMenuActionListener(Lcom/android/launcher3/widget/view/WidgetSearchbar$MenuActionListener;)V

    return-void
.end method

.method public getState()Lcom/android/launcher3/widget/controller/WidgetState$State;
    .locals 1

    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    return-object v0
.end method

.method public initTitleBar(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/launcher3/widget/controller/WidgetState;->initTitleBar(Landroid/view/View;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " titlebar is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/android/launcher3/widget/view/WidgetSearchbar;

    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    sget-object v2, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-interface {v1, v2}, Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;->notifyChangeState(Lcom/android/launcher3/widget/controller/WidgetState$State;)V

    :cond_0
    return v0
.end method

.method public onPagedViewTouchIntercepted()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->onPagedViewTouchIntercepted()V

    return-void
.end method

.method protected onStageEnter()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->onStageEnter()V

    return-void
.end method

.method protected onStageExit()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->onStageExit()V

    return-void
.end method

.method public onUpkeyPressed(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->onBackPressed()Z

    return-void
.end method

.method public onVoiceSearch(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->onVoiceSearch(Ljava/lang/String;)V

    return-void
.end method

.method public onWidgetItemClick(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Lcom/android/launcher3/widget/view/WidgetItemFolderView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;->openFolder(Landroid/view/View;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/android/launcher3/widget/view/WidgetItemSingleView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->clickNotAllowed(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onWidgetItemLongClick(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/widget/view/WidgetItemSingleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;->startDrag(Landroid/view/View;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openKeyBoard()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->openKeyboard()V

    return-void
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->save(Landroid/os/Bundle;)V

    return-void
.end method

.method public setFocus()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setFocus()V

    return-void
.end method

.method public setFocusToSearchEditText()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setFocusToSearchEditText()V

    return-void
.end method

.method public setSearchFilter(Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    instance-of v0, v0, Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    check-cast v0, Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;->setSearchFilter(Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;)V

    :cond_0
    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    instance-of v0, v0, Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    check-cast v0, Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;->setSearchString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected showPopupMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->showPopupMenu()Z

    move-result v0

    return v0
.end method

.method public startContactUs()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateSearch;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->startContactUsActivity(Landroid/content/Context;)V

    return-void
.end method
