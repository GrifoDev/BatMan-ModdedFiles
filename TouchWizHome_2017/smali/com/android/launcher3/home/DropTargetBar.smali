.class public Lcom/android/launcher3/home/DropTargetBar;
.super Landroid/widget/FrameLayout;
.source "DropTargetBar.java"


# instance fields
.field private mCancelDropTarget:Lcom/android/launcher3/home/CancelDropTarget;

.field private mDragManager:Lcom/android/launcher3/common/drag/DragManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/DropTargetBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method changeColorForBg(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/DropTargetBar;->mCancelDropTarget:Lcom/android/launcher3/home/CancelDropTarget;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/CancelDropTarget;->changeColorForBg(Z)V

    return-void
.end method

.method onConfigurationChangedIfNeeded()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/home/DropTargetBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/DropTargetBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/launcher3/home/DropTargetBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/DropTargetBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/launcher3/home/DropTargetBar;->mCancelDropTarget:Lcom/android/launcher3/home/CancelDropTarget;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/home/CancelDropTarget;->onConfigurationChangedIfNeeded(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/DropTargetBar;->setVisibility(I)V

    const v0, 0x7f110068

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/DropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/CancelDropTarget;

    iput-object v0, p0, Lcom/android/launcher3/home/DropTargetBar;->mCancelDropTarget:Lcom/android/launcher3/home/CancelDropTarget;

    return-void
.end method

.method setDropTargetBarVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/DropTargetBar;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/home/DropTargetBar;->mCancelDropTarget:Lcom/android/launcher3/home/CancelDropTarget;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/DropTargetBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/DropTargetBar;->mCancelDropTarget:Lcom/android/launcher3/home/CancelDropTarget;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/CancelDropTarget;->setEnable(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/DropTargetBar;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/home/DropTargetBar;->mCancelDropTarget:Lcom/android/launcher3/home/CancelDropTarget;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method setup(Lcom/android/launcher3/common/drag/DragManager;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/home/DropTargetBar;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v0, p0, Lcom/android/launcher3/home/DropTargetBar;->mDragManager:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/home/DropTargetBar;->mCancelDropTarget:Lcom/android/launcher3/home/CancelDropTarget;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->addDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V

    return-void
.end method

.method showCancelDropTarget()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/DropTargetBar;->mCancelDropTarget:Lcom/android/launcher3/home/CancelDropTarget;

    invoke-virtual {v0}, Lcom/android/launcher3/home/CancelDropTarget;->animateCancelDropTarget()V

    return-void
.end method
