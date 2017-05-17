.class public Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;
.super Landroid/widget/BaseAdapter;
.source "QuickOptionListAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/quickoption/QuickOptionListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mItemList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f030039

    invoke-virtual {v0, v4, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v4, 0x7f0f00bf

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-virtual {v4}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getIconRsrId()I

    move-result v4

    const v5, 0x7f0200d9

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4}, Lcom/android/launcher3/util/SecureFolderHelper;->getSecureFolderTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    const v5, 0x7f080088

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-virtual {v4}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getIconRsrId()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09012b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setSelected(Z)V

    move-object p2, v1

    :cond_0
    return-object p2

    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-virtual {v4}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getTitleRsrId()I

    move-result v4

    const v5, 0x7f080081

    if-ne v4, v5, :cond_2

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-virtual {v4}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getTitleRsrId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getCallback()Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getTitleRsrId()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertQOEventLog(ILcom/android/launcher3/Launcher;)V

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->isOptionRemove()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->createItemRemoveAnimation()Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->getAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter$1;-><init>(Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;Lcom/android/launcher3/common/quickoption/QuickOptionListItem;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getCallback()Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    goto :goto_0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/QuickOptionListItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
