.class public Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;
.super Lcom/android/launcher3/common/base/view/CellLayoutChildren;
.source "WorkspaceCellLayoutChildren.java"


# static fields
.field private static final GRID_CHANGE_ANIMATION_DELAY:I = 0x190

.field private static final GRID_CHANGE_ANIMATION_DURATION:I = 0x12c


# instance fields
.field private final mGridChangeAnimationSet:Landroid/view/animation/AnimationSet;

.field private mIsGridChanging:Z

.field private mPreviousRectMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mPreviousRectMap:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mGridChangeAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mIsGridChanging:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;)Landroid/view/animation/AnimationSet;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mGridChangeAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method private startGridChangeAnimation()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mIsGridChanging:Z

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mPreviousRectMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->setCrossHairAnimatedVisibility(IZ)V

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->invalidate()V

    :cond_0
    new-instance v1, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;-><init>(Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;Lcom/android/launcher3/common/base/view/CellLayout;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected buildCustomAnimationSet(Landroid/view/View;IIII)V
    .locals 35

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mIsGridChanging:Z

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-nez v26, :cond_4

    const-wide/16 v24, -0x64

    :goto_1
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mPreviousRectMap:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/graphics/Rect;

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mPreviousRectMap:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getLocationOnScreen([I)V

    const/4 v6, 0x0

    aget v8, v17, v6

    const/4 v10, 0x0

    aget v10, v30, v10

    sub-int/2addr v8, v10

    aput v8, v17, v6

    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v6, :cond_2

    move/from16 v0, p4

    int-to-float v6, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v8

    mul-float/2addr v6, v8

    float-to-int v0, v6

    move/from16 p4, v0

    move/from16 v0, p2

    int-to-float v6, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v8

    mul-float/2addr v6, v8

    float-to-int v0, v6

    move/from16 p2, v0

    move/from16 v0, p5

    int-to-float v6, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v8

    mul-float/2addr v6, v8

    float-to-int v0, v6

    move/from16 p5, v0

    move/from16 v0, p3

    int-to-float v6, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v8

    mul-float/2addr v6, v8

    float-to-int v0, v6

    move/from16 p3, v0

    :cond_2
    new-instance v23, Landroid/graphics/Rect;

    const/4 v6, 0x0

    aget v6, v17, v6

    const/4 v8, 0x1

    aget v8, v17, v8

    const/4 v10, 0x0

    aget v10, v17, v10

    sub-int v11, p4, p2

    add-int/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v17, v11

    sub-int v12, p5, p3

    add-int/2addr v11, v12

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v6, :cond_5

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float v5, v6, v8

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float v7, v6, v8

    move-object/from16 v0, v31

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v23

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v8

    int-to-float v6, v6

    div-float v27, v6, v5

    move-object/from16 v0, v31

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v23

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    int-to-float v6, v6

    div-float v28, v6, v7

    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v34, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v6, v2, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_2
    new-instance v20, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const-wide/16 v10, 0x12c

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/home/WorkspaceCellLayout;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mRestoredItems:Ljava/util/List;

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v18, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, v18

    invoke-direct {v0, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    :goto_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mGridChangeAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-wide/from16 v24, v0

    goto/16 :goto_1

    :cond_5
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float v9, v6, v8

    move-object/from16 v0, v31

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    add-float v32, v6, v8

    move-object/from16 v0, v31

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    add-float v33, v6, v8

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    add-float v21, v6, v8

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    add-float v22, v6, v8

    sub-float v6, v32, v21

    div-float v27, v6, v9

    sub-float v6, v33, v22

    div-float v28, v6, v9

    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x1

    const/high16 v16, 0x3f000000    # 0.5f

    move-object v8, v4

    move v11, v9

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v34, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v6, v2, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_3
.end method

.method public callRefreshLiveIcon()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getChildrenAllItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_0

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/IconView;->onLiveIconRefresh()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getDescendantFocusability()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isScreenGridState()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/high16 v1, 0x60000

    :goto_1
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/Workspace;

    check-cast v1, Lcom/android/launcher3/home/Workspace;

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getDescendantFocusability()I

    move-result v1

    goto :goto_1
.end method

.method public isGridChanging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mIsGridChanging:Z

    return v0
.end method

.method public makePreviousRectMap(Landroid/view/View;)V
    .locals 18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    const/4 v14, 0x2

    new-array v2, v14, [I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v14, 0x2

    new-array v8, v14, [I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getLocationOnScreen([I)V

    const/4 v14, 0x0

    aget v15, v2, v14

    const/16 v16, 0x0

    aget v16, v8, v16

    sub-int v15, v15, v16

    aput v15, v2, v14

    if-nez v12, :cond_1

    const-wide/16 v6, -0x64

    :goto_0
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v14, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v11

    :cond_0
    const/4 v14, 0x0

    aget v14, v2, v14

    int-to-float v5, v14

    const/4 v14, 0x1

    aget v14, v2, v14

    int-to-float v13, v14

    const/4 v14, 0x0

    aget v14, v2, v14

    int-to-float v14, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v10

    add-float v9, v14, v15

    const/4 v14, 0x1

    aget v14, v2, v14

    int-to-float v14, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v11

    add-float v3, v14, v15

    new-instance v4, Landroid/graphics/Rect;

    float-to-int v14, v5

    float-to-int v15, v13

    float-to-int v0, v9

    move/from16 v16, v0

    float-to-int v0, v3

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v4, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mPreviousRectMap:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v6, v7, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void

    :cond_1
    check-cast v12, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v6, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isScreenGridState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mGridChangeAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mIsGridChanging:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->startGridChangeAnimation()V

    :cond_0
    return-void
.end method

.method public setGridChangeState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mIsGridChanging:Z

    return-void
.end method
