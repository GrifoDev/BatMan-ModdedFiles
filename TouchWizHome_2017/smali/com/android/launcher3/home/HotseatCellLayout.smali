.class public Lcom/android/launcher3/home/HotseatCellLayout;
.super Lcom/android/launcher3/common/base/view/CellLayout;
.source "HotseatCellLayout.java"


# static fields
.field private static final REORDER_ANIMATION_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "HotseatCellLayout"


# instance fields
.field private mHotseat:Lcom/android/launcher3/home/Hotseat;

.field private mMaxCellCount:I

.field private reorderAnimListener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/home/HotseatCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/HotseatCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/launcher3/home/HotseatCellLayout$5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/HotseatCellLayout$5;-><init>(Lcom/android/launcher3/home/HotseatCellLayout;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->reorderAnimListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/HotseatCellLayout;)Lcom/android/launcher3/home/Hotseat;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    return-object v0
.end method

.method private checkInvalidPosition(I)Z
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountY()I

    move-result v0

    :goto_0
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountX()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getNextLp(Landroid/view/View;)[I
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    const/4 v5, 0x2

    new-array v3, v5, [I

    iget-object v5, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    aput v5, v3, v7

    iget v5, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iget v6, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mCellHeight:I

    iget v7, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHeightGap:I

    add-int/2addr v6, v7

    mul-int/2addr v5, v6

    aput v5, v3, v8

    :goto_0
    return-object v3

    :cond_0
    check-cast p1, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {p1}, Lcom/android/launcher3/common/view/IconView;->getIconSize()I

    move-result v1

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mCellWidth:I

    sub-int/2addr v6, v1

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mCountX:I

    iget v6, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    sub-int/2addr v5, v6

    add-int/lit8 v4, v5, -0x1

    :goto_1
    iget v5, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mCellWidth:I

    iget v6, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mWidthGap:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v4

    aput v5, v3, v7

    iget v5, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    aput v5, v3, v8

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mCellWidth:I

    if-le v5, v6, :cond_2

    aget v5, v3, v7

    sub-int/2addr v5, v0

    aput v5, v3, v7

    goto :goto_0

    :cond_1
    iget v4, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    goto :goto_1

    :cond_2
    aget v5, v3, v7

    add-int/2addr v5, v0

    aput v5, v3, v7

    goto :goto_0
.end method

.method private moveIcon(Landroid/view/View;IIZZ)Landroid/animation/Animator;
    .locals 11

    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v3, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    iget v5, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    const/4 v0, 0x2

    new-array v9, v0, [I

    if-eqz p5, :cond_0

    iput p2, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iput p3, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v8, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setupLp(Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;)V

    const/4 v0, 0x0

    iget v1, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    aput v1, v9, v0

    const/4 v0, 0x1

    iget v1, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    aput v1, v9, v0

    :goto_0
    const/4 v0, 0x0

    aget v4, v9, v0

    const/4 v0, 0x1

    aget v6, v9, v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HotseatCellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    if-ne v3, v4, :cond_1

    if-ne v5, v6, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    const/4 v10, 0x0

    :goto_1
    return-object v10

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HotseatCellLayout;->getNextLp(Landroid/view/View;)[I

    move-result-object v9

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz p4, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p1, v0}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v10

    const-wide/16 v0, 0x12c

    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/launcher3/home/HotseatCellLayout$1;

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/home/HotseatCellLayout$1;-><init>(Lcom/android/launcher3/home/HotseatCellLayout;Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;IIIILandroid/view/View;)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/launcher3/home/HotseatCellLayout$2;

    invoke-direct {v0, p0, v2, p1}, Lcom/android/launcher3/home/HotseatCellLayout$2;-><init>(Lcom/android/launcher3/home/HotseatCellLayout;Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :cond_2
    iput v4, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    iput v6, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    const/4 v10, 0x0

    goto :goto_1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->hasEmptyCell()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v1

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/home/HotseatCellLayout;->cellToPosition(II)I

    move-result v2

    invoke-virtual {v1, v2, v4, v4}, Lcom/android/launcher3/home/HotseatDragController;->makeEmptyCell(IZZ)V

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z

    move-result v1

    return v1
.end method

.method cellToPosition(II)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return p2

    :cond_0
    move p2, p1

    goto :goto_0
.end method

.method public getContentIconSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getContentTop()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getContentTop()I

    move-result v0

    return v0
.end method

.method getEmptyCount(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method public getItemPositionDescription(II)Ljava/lang/String;
    .locals 5

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, p2

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method getMaxCellCount()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mMaxCellCount:I

    return v0
.end method

.method gridSizeChanged(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;Z)V
    .locals 8

    iget-object v6, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/home/HotseatDragController;->isReorderRunning()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/android/launcher3/home/HotseatCellLayout$3;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/launcher3/home/HotseatCellLayout$3;-><init>(Lcom/android/launcher3/home/HotseatCellLayout;Lcom/android/launcher3/common/deviceprofile/GridIconInfo;Z)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    :goto_0
    if-ltz v4, :cond_0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v6, v2, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v6, :cond_4

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->applyStyle()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    check-cast v2, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/view/IconView;->animateChildScale(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;)V

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    instance-of v6, v2, Lcom/android/launcher3/common/view/IconView;

    if-eqz v6, :cond_2

    move-object v5, v2

    check-cast v5, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/view/IconView;->reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1
.end method

.method hasEmptyCell()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getOccupied()[[Z

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mCountX:I

    if-ge v1, v3, :cond_2

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mCountY:I

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v1

    aget-boolean v3, v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_2
    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method isFull()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mMaxCellCount:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method markCellsAsOccupiedForAllChild()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HotseatCellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method realTimeReorder(II)Landroid/animation/AnimatorSet;
    .locals 12

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v6, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mCountY:I

    :goto_0
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    if-ne p2, p1, :cond_2

    const/4 v11, 0x0

    :cond_0
    return-object v11

    :cond_1
    iget v6, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mCountX:I

    goto :goto_0

    :cond_2
    if-le p2, p1, :cond_4

    const/4 v7, 0x1

    :goto_1
    move v8, p1

    :goto_2
    if-eq v8, p2, :cond_0

    add-int v10, v8, v7

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_5

    div-int v2, v10, v6

    :goto_3
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_6

    rem-int v3, v10, v6

    :goto_4
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/home/HotseatCellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_7

    :cond_3
    :goto_5
    add-int/2addr v8, v7

    goto :goto_2

    :cond_4
    const/4 v7, -0x1

    goto :goto_1

    :cond_5
    rem-int v2, v10, v6

    goto :goto_3

    :cond_6
    div-int v3, v10, v6

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HotseatCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_8

    div-int v2, v8, v6

    :goto_6
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_9

    rem-int v3, v8, v6

    :goto_7
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    :goto_8
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HotseatCellLayout;->checkInvalidPosition(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    const-string v0, "HotseatCellLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "realTimeReorder Item : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " lp.x : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " lp.y : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "empty : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " target : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->dumpHotseatItem()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "attempted to move icon to invalid position"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    rem-int v2, v8, v6

    goto :goto_6

    :cond_9
    div-int v3, v8, v6

    goto :goto_7

    :cond_a
    move v0, v2

    goto :goto_8

    :cond_b
    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HotseatCellLayout;->moveIcon(Landroid/view/View;IIZZ)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_5
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 8

    const-wide/16 v4, -0x1

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->hasTargetView()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    instance-of v1, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HSDT"

    const-string v3, "Folder"

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    const v2, 0x7f080190

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f080145

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HSDT"

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method reorderAllChildren(Z[[ZIZ)Landroid/animation/AnimatorSet;
    .locals 17

    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    array-length v1, v0

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aget-object v1, p2, v1

    array-length v12, v1

    :cond_0
    :goto_0
    if-eqz p4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountY()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/home/HotseatCellLayout;->cellToPosition(II)I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    :goto_1
    const/4 v8, 0x0

    move v10, v9

    :goto_2
    if-ge v8, v12, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p4, :cond_3

    add-int/lit8 v1, v12, -0x1

    sub-int v16, v1, v8

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_6

    move v9, v10

    :goto_4
    add-int/lit8 v8, v8, 0x1

    move v10, v9

    goto :goto_2

    :cond_1
    move-object/from16 v0, p2

    array-length v12, v0

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    move/from16 v16, v8

    goto :goto_3

    :cond_4
    if-eqz p4, :cond_5

    add-int/lit8 v1, v12, -0x1

    sub-int v15, v1, v8

    :goto_5
    goto :goto_3

    :cond_5
    move v15, v8

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p4, :cond_7

    iget v1, v13, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move/from16 v0, p3

    if-lt v1, v0, :cond_f

    add-int/lit8 v9, v10, -0x1

    iput v10, v13, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, v13, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/HotseatCellLayout;->checkInvalidPosition(I)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    const-string v1, "HotseatCellLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reorderAllChildren Item : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lp.x : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lp.y : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " animate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->dumpHotseatItem()V

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "attempted to move icon to invalid position"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    add-int/lit8 v9, v10, 0x1

    iput v10, v13, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    goto :goto_6

    :cond_8
    if-eqz p4, :cond_9

    iget v1, v13, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move/from16 v0, p3

    if-lt v1, v0, :cond_f

    add-int/lit8 v9, v10, -0x1

    iput v10, v13, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    goto :goto_6

    :cond_9
    add-int/lit8 v9, v10, 0x1

    iput v10, v13, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    goto :goto_6

    :cond_a
    iget v1, v13, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    goto :goto_7

    :cond_b
    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/home/HotseatCellLayout;->moveIcon(Landroid/view/View;IIZZ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/HotseatCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->dragging()Z

    move-result v1

    if-nez v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/HotseatCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_e

    const/4 v7, 0x1

    :goto_8
    if-eqz v7, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/HotseatCellLayout;->reorderAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v14, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_d
    return-object v14

    :cond_e
    const/4 v7, 0x0

    goto :goto_8

    :cond_f
    move v9, v10

    goto/16 :goto_6
.end method

.method reorderMakeCells(Z[[ZI)Landroid/animation/AnimatorSet;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/home/HotseatCellLayout;->reorderAllChildren(Z[[ZIZ)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method reorderRemoveCells(Z[[Z)Landroid/animation/AnimatorSet;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/launcher3/home/HotseatCellLayout;->reorderAllChildren(Z[[ZIZ)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public setCellDimensions()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v1, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellGap()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHeightGap:I

    iput v1, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mWidthGap:I

    return-void
.end method

.method public setGridSize(II)V
    .locals 7

    iget-object v5, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getHotseatBarSize()I

    move-result v4

    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableHeightPx:I

    iget-object v6, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Hotseat;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Hotseat;->getPaddingBottom()I

    move-result v6

    sub-int v3, v5, v6

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v1, v4, v5

    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v0, v3, v5

    iget v5, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mWidthGap:I

    invoke-static {v1, v5, p1}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateCellWidthOrHeight(III)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mFixedCellWidth:I

    iput v5, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mCellWidth:I

    iget v5, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHeightGap:I

    invoke-static {v0, v5, p2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateCellWidthOrHeight(III)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mFixedCellHeight:I

    iput v5, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mCellHeight:I

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/CellLayout;->setGridSize(II)V

    return-void

    :cond_0
    iget v5, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableWidthPx:I

    iget-object v6, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Hotseat;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Hotseat;->getPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    goto :goto_0

    :cond_1
    iget-object v5, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getHotseatBarSize()I

    move-result v3

    goto :goto_1
.end method

.method setHotseat(Lcom/android/launcher3/home/Hotseat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    return-void
.end method

.method setMaxCellCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mMaxCellCount:I

    return-void
.end method

.method updateFolderGrid()V
    .locals 6

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/launcher3/home/HotseatCellLayout$4;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HotseatCellLayout$4;-><init>(Lcom/android/launcher3/home/HotseatCellLayout;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method updateIconViews()V
    .locals 9

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    iget-object v7, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, v8, v1}, Lcom/android/launcher3/home/HotseatCellLayout;->setGridSize(II)V

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setCurrentHotseatGridIcon(I)Z

    add-int/lit8 v5, v1, -0x1

    :goto_1
    if-ltz v5, :cond_3

    invoke-virtual {v0, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v7, v2, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v7, :cond_2

    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->applyStyle()V

    :cond_0
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1, v8}, Lcom/android/launcher3/home/HotseatCellLayout;->setGridSize(II)V

    goto :goto_0

    :cond_2
    instance-of v7, v2, Lcom/android/launcher3/common/view/IconView;

    if-eqz v7, :cond_0

    move-object v6, v2

    check-cast v6, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/view/IconView;->reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_2

    :cond_3
    return-void
.end method
