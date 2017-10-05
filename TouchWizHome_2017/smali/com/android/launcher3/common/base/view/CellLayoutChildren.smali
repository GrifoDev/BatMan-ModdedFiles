.class public Lcom/android/launcher3/common/base/view/CellLayoutChildren;
.super Landroid/view/ViewGroup;
.source "CellLayoutChildren.java"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mCountX:I

.field private mHeightGap:I

.field private final mTmpCellXY:[I

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mTmpCellXY:[I

    return-void
.end method


# virtual methods
.method protected buildCustomAnimationSet(Landroid/view/View;IIII)V
    .locals 0

    return-void
.end method

.method public callRefreshLiveIcon()V
    .locals 0

    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v4, v3, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    if-gt v4, p1, :cond_0

    iget v4, v3, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v5, v3, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    iget v4, v3, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    if-gt v4, p2, :cond_0

    iget v4, v3, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iget v5, v3, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge p2, v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;
    .locals 10

    const/4 v4, 0x0

    if-nez p1, :cond_1

    move-object v3, v4

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v5, :cond_2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    iget-wide v8, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v3, v4

    goto :goto_0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public getChildrenAllItems()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v3, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 22

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mCellWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mCellHeight:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    const-string v7, "previous_hostView"

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const/16 v17, 0x1

    :goto_0
    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mWidthGap:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mHeightGap:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mCountX:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->setup(IIIII)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/common/base/view/CellLayout;

    iget v12, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->width:I

    iget v11, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->height:I

    move-object/from16 v0, p1

    instance-of v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v15, :cond_1

    iget-boolean v7, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v7, :cond_4

    iget v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v18, v0

    :goto_1
    iget-boolean v7, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v7, :cond_5

    iget v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v19, v0

    :goto_2
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mCellWidth:I

    mul-int v8, v18, v7

    const/4 v7, 0x2

    move/from16 v0, v18

    if-lt v0, v7, :cond_6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mWidthGap:I

    add-int/lit8 v9, v18, -0x1

    mul-int/2addr v7, v9

    :goto_3
    add-int v21, v8, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mCellHeight:I

    mul-int v8, v19, v7

    const/4 v7, 0x2

    move/from16 v0, v19

    if-lt v0, v7, :cond_7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mHeightGap:I

    add-int/lit8 v9, v19, -0x1

    mul-int/2addr v7, v9

    :goto_4
    add-int v20, v8, v7

    move/from16 v0, v18

    iput v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v0, v19

    iput v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->calculateWidgetSize(IIII)Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v16

    move-object/from16 v7, p1

    check-cast v7, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->setResizeScaleResult(Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;)V

    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->width:I

    move-object/from16 v0, v16

    iget v11, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->height:I

    :cond_1
    iput v12, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->width:I

    iput v11, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->height:I

    :cond_2
    iget v7, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->width:I

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    iget v7, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->height:I

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/view/View;->measure(II)V

    return-void

    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_4
    iget v0, v10, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    move/from16 v18, v0

    goto :goto_1

    :cond_5
    iget v0, v10, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    move/from16 v19, v0

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    goto :goto_4
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_1

    invoke-virtual {p0, v8}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v2, v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    iget v3, v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    iget v0, v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->width:I

    add-int/2addr v0, v2

    iget v4, v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->height:I

    add-int/2addr v4, v3

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/view/View;->layout(IIII)V

    iget v0, v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->width:I

    add-int v4, v2, v0

    iget v0, v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->height:I

    add-int v5, v3, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->buildCustomAnimationSet(Landroid/view/View;IIII)V

    iget-boolean v0, v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->dropped:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->dropped:Z

    iget-object v6, p0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mTmpCellXY:[I

    invoke-virtual {p0, v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getLocationOnScreen([I)V

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setMeasuredDimension(II)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method public setCellDimensions(IIIII)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mCellWidth:I

    iput p2, p0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mCellHeight:I

    iput p3, p0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mWidthGap:I

    iput p4, p0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mHeightGap:I

    iput p5, p0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mCountX:I

    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method public setupLp(Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;)V
    .locals 6

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mWidthGap:I

    iget v4, p0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mHeightGap:I

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mCountX:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->setup(IIIII)V

    return-void
.end method
