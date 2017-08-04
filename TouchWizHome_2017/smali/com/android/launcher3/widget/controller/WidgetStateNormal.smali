.class public Lcom/android/launcher3/widget/controller/WidgetStateNormal;
.super Lcom/android/launcher3/widget/controller/WidgetState;
.source "WidgetStateNormal.java"

# interfaces
.implements Lcom/android/launcher3/widget/view/WidgetSearchbar$MenuActionListener;


# instance fields
.field private mSearchTextViewKeyListener:Landroid/view/View$OnKeyListener;

.field private mSearchTextViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/controller/WidgetState;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Lcom/android/launcher3/widget/controller/WidgetStateNormal$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/controller/WidgetStateNormal$1;-><init>(Lcom/android/launcher3/widget/controller/WidgetStateNormal;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mSearchTextViewTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/launcher3/widget/controller/WidgetStateNormal$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/controller/WidgetStateNormal$2;-><init>(Lcom/android/launcher3/widget/controller/WidgetStateNormal;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mSearchTextViewKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method


# virtual methods
.method protected changeColorForBg(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->changeColorAndBackground(Z)V

    return-void
.end method

.method public changeStateToUninstall()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

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

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setMenuActionListener(Lcom/android/launcher3/widget/view/WidgetSearchbar$MenuActionListener;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mSearchTextViewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setOnSearchTextViewKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mSearchTextViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setOnSearchTextViewTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->enter(Lcom/android/launcher3/widget/controller/WidgetState$State;Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public exit(Lcom/android/launcher3/widget/controller/WidgetState;Landroid/animation/AnimatorSet;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setMenuActionListener(Lcom/android/launcher3/widget/view/WidgetSearchbar$MenuActionListener;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setOnSearchTextViewKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setOnSearchTextViewTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1}, Lcom/android/launcher3/widget/controller/WidgetState;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->UNINSTALL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getState()Lcom/android/launcher3/widget/controller/WidgetState$State;
    .locals 1

    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    return-object v0
.end method

.method public initTitleBar(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/launcher3/widget/controller/WidgetState;->initTitleBar(Landroid/view/View;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

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

    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->onConfigurationChangedIfNeeded()V

    return-void
.end method

.method protected onStageExit()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->onStageExit()V

    return-void
.end method

.method public onVoiceSearch(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-interface {v0, v1}, Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;->notifyChangeState(Lcom/android/launcher3/widget/controller/WidgetState$State;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->onVoiceSearch(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onWidgetItemClick(Landroid/view/View;)V
    .locals 4

    const v2, 0x7f08019f

    instance-of v0, p1, Lcom/android/launcher3/widget/view/WidgetItemFolderView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;->openFolder(Landroid/view/View;Z)V

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080150

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/android/launcher3/widget/view/WidgetItemSingleView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->clickNotAllowed(Landroid/view/View;)V

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "b"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWidgetItemLongClick(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/widget/view/WidgetItemSingleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mActionListener:Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;->startDrag(Landroid/view/View;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFocus()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setFocus()V

    return-void
.end method

.method protected setHasInstallableApp(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setHasInstallableApp(Z)V

    return-void
.end method

.method protected showPopupMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->showPopupMenu()Z

    move-result v0

    return v0
.end method

.method public startContactUs()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetStateNormal;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->startContactUsActivity(Landroid/content/Context;)V

    return-void
.end method
