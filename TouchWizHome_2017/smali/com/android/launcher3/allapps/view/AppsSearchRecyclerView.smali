.class public Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;
.super Lcom/android/launcher3/common/base/view/BaseRecyclerView;
.source "AppsSearchRecyclerView.java"

# interfaces
.implements Lcom/android/launcher3/Stats$LaunchSourceProvider;


# static fields
.field private static final FAST_SCROLL_BAR_MODE_DISTRIBUTE_BY_ROW:I = 0x0

.field private static final FAST_SCROLL_BAR_MODE_DISTRIBUTE_BY_SECTIONS:I = 0x1

.field private static final FAST_SCROLL_MODE_FREE_SCROLL:I = 0x1

.field private static final FAST_SCROLL_MODE_JUMP_TO_FIRST_ICON:I


# instance fields
.field private mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field private mFastScrollFrameIndex:I

.field private final mFastScrollFrames:[I

.field private mNumAppsPerRow:I

.field private mPrevFastScrollFocusedPosition:I

.field private final mScrollBarMode:I

.field private mScrollPosState:Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;

.field private mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v1, 0xa

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mFastScrollFrames:[I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollBarMode:I

    new-instance v1, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;

    invoke-direct {v1}, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollPosState:Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;

    new-instance v1, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView$1;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->setDetachThumbOnFastScroll()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mFastScrollFrameIndex:I

    return v0
.end method

.method static synthetic access$008(Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;)I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mFastScrollFrameIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mFastScrollFrameIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mFastScrollFrames:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mPrevFastScrollFocusedPosition:I

    return v0
.end method

.method private getScrollAtPosition(II)I
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v2, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget v2, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_0
    iget v2, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->getPaddingTop()I

    move-result v1

    :cond_1
    iget v2, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    :cond_2
    return v1
.end method

.method private smoothSnapToPosition(ILcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;)V
    .locals 7

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->getPaddingTop()I

    move-result v4

    iget v5, p2, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    iget v6, p2, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iget v5, p2, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;->rowTopOffset:I

    sub-int v0, v4, v5

    iget v4, p2, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    invoke-direct {p0, p1, v4}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->getScrollAtPosition(II)I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mFastScrollFrames:[I

    array-length v3, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mFastScrollFrames:[I

    sub-int v5, v2, v0

    div-int/2addr v5, v3

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mFastScrollFrameIndex:I

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateEmptySearchBackgroundBounds()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public fillInLaunchSourceData(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "container"

    const-string v1, "all_apps"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sub_container"

    const-string v1, "search"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "sub_container"

    const-string v1, "a-z"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getCurScrollState(Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;)V
    .locals 9

    const/4 v8, -0x1

    iput v8, p1, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    iput v8, p1, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;->rowTopOffset:I

    iput v8, p1, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mNumAppsPerRow:I

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v5

    if-eq v5, v8, :cond_3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v6, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    iget v6, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    :cond_2
    iget v6, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    iput v6, p1, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v6

    iput v6, p1, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;->rowTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, p1, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFastScrollCompleted()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->onFastScrollCompleted()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mPrevFastScrollFocusedPosition:I

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->onFinishInflate()V

    invoke-virtual {p0, p0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method public onSearchResultsChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->scrollToTop()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->updateEmptySearchBackgroundBounds()V

    return-void
.end method

.method public onUpdateScrollbar(I)V
    .locals 13

    const/4 v12, -0x1

    iget-object v10, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v10}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    iget v10, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mNumAppsPerRow:I

    if-nez v10, :cond_2

    :cond_0
    iget-object v10, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v10, v12, v12}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v10, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v10}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getNumAppRows()I

    move-result v5

    iget-object v10, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollPosState:Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;

    invoke-virtual {p0, v10}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->getCurScrollState(Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;)V

    iget-object v10, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollPosState:Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;

    iget v10, v10, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    if-gez v10, :cond_3

    iget-object v10, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v10, v12, v12}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->getAvailableScrollBarHeight()I

    move-result v0

    iget-object v10, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v10}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getNumAppRows()I

    move-result v10

    iget-object v11, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollPosState:Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;

    iget v11, v11, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    invoke-virtual {p0, v10, v11}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->getAvailableScrollHeight(II)I

    move-result v1

    if-gtz v1, :cond_4

    iget-object v10, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v10, v12, v12}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->getPaddingTop()I

    move-result v10

    iget-object v11, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollPosState:Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;

    iget v11, v11, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;->rowIndex:I

    iget-object v12, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollPosState:Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;

    iget v12, v12, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollPosState:Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;

    iget v11, v11, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;->rowTopOffset:I

    sub-int v8, v10, v11

    iget-object v10, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v11, v8

    int-to-float v12, v1

    div-float/2addr v11, v12

    int-to-float v12, v0

    mul-float/2addr v11, v12

    float-to-int v11, v11

    add-int v7, v10, v11

    iget-object v10, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v10}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->isThumbDetached()Z

    move-result v10

    if-eqz v10, :cond_9

    sget-boolean v10, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v6, v10, Landroid/graphics/Rect;->left:I

    :goto_1
    iget-object v10, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v10}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->isDraggingThumb()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    iget-object v11, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v11}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->getLastTouchY()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v10, v6, v11}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->getWidth()I

    move-result v10

    iget-object v11, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v11}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->getThumbWidth()I

    move-result v11

    sub-int v6, v10, v11

    goto :goto_1

    :cond_6
    iget-object v10, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v10}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->getThumbOffset()Landroid/graphics/Point;

    move-result-object v10

    iget v9, v10, Landroid/graphics/Point;->y:I

    sub-int v2, v7, v9

    mul-int v10, v2, p1

    int-to-float v10, v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_8

    if-gez p1, :cond_7

    mul-int v10, p1, v9

    int-to-float v10, v10

    int-to-float v11, v7

    div-float/2addr v10, v11

    float-to-int v4, v10

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/2addr v9, v10

    :goto_2
    const/4 v10, 0x0

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v10, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v10, v6, v9}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    if-ne v7, v9, :cond_1

    iget-object v10, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v10}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->reattachThumbToScroll()V

    goto/16 :goto_0

    :cond_7
    sub-int v10, v0, v9

    mul-int/2addr v10, p1

    int-to-float v10, v10

    sub-int v11, v0, v7

    int-to-float v11, v11

    div-float/2addr v10, v11

    float-to-int v4, v10

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_2

    :cond_8
    iget-object v10, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v10, v6, v9}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->setThumbOffset(II)V

    goto/16 :goto_0

    :cond_9
    iget-object v10, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollPosState:Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;

    invoke-virtual {p0, v10, v5}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->synchronizeScrollBarThumbOffsetToViewScroll(Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;I)V

    goto/16 :goto_0
.end method

.method public scrollToPositionAtProgress(F)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getNumAppRows()I

    move-result v6

    if-nez v6, :cond_0

    const-string v7, ""

    :goto_0
    return-object v7

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->stopScroll()V

    iget-object v7, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    packed-switch v8, :pswitch_data_0

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Unexpected scroll bar mode"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :pswitch_0
    const/4 v2, 0x1

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    iget v7, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    cmpl-float v7, v7, p1

    if-lez v7, :cond_3

    :cond_1
    :goto_2
    iget-object v7, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollPosState:Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;

    invoke-virtual {p0, v7}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->getCurScrollState(Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;)V

    iget-object v7, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollPosState:Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;

    iget v7, v7, Lcom/android/launcher3/common/base/view/BaseRecyclerView$ScrollPositionState;->rowHeight:I

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->getAvailableScrollHeight(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/LinearLayoutManager;

    iget v7, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mPrevFastScrollFocusedPosition:I

    iget-object v8, v4, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v8, v8, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    if-eq v7, v8, :cond_2

    iget-object v7, v4, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v7, v7, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    iput v7, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mPrevFastScrollFocusedPosition:I

    :cond_2
    iget-object v7, v4, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v7, v7

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public scrollToTop()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->isThumbDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mScrollbar:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->reattachThumbToScroll()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public setApps(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    return-void
.end method

.method public setNumAppsPerRow(Lcom/android/launcher3/common/deviceprofile/DeviceProfile;I)V
    .locals 5

    const/4 v4, 0x1

    iput p2, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mNumAppsPerRow:I

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableHeightPx:I

    iget-object v3, p1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v3

    div-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    iget v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mNumAppsPerRow:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, v4, v2}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->mNumAppsPerRow:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method
