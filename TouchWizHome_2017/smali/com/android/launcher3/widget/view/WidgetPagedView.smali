.class public abstract Lcom/android/launcher3/widget/view/WidgetPagedView;
.super Lcom/android/launcher3/common/base/view/PagedView;
.source "WidgetPagedView.java"

# interfaces
.implements Lcom/android/launcher3/common/base/view/LauncherTransitionable;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;,
        Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;,
        Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;
    }
.end annotation


# static fields
.field private static final PAGE_CACHE_SIZE:I = 0x3

.field public static final PAGE_MINIMIZE:I = 0x0

.field public static final PAGE_NORMALIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WidgetPagedView"


# instance fields
.field private mChildrenLayersEnabled:Z

.field private mDisplayWidgetItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDragInProgress:Z

.field public mDragOnSearchState:Z

.field private mFilter:Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;

.field private mFilterString:Ljava/lang/String;

.field private mItemKeyEventListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;

.field private mItemOnKeyListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;

.field private final mItemViewPool:Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

.field private mNumWidgetPages:I

.field private mPageCacheSize:I

.field private mWidgetItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    iput-boolean v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDragOnSearchState:Z

    iput-boolean v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDragInProgress:Z

    iput v2, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mPageCacheSize:I

    iput-boolean v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mChildrenLayersEnabled:Z

    new-instance v0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/view/WidgetPagedView$2;-><init>(Lcom/android/launcher3/widget/view/WidgetPagedView;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mItemKeyEventListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;-><init>(Lcom/android/launcher3/widget/view/WidgetPagedView;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mItemViewPool:Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;

    new-instance v0, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mItemKeyEventListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;-><init>(Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mItemOnKeyListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setSaveEnabled(Z)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher3/widget/view/WidgetPagedView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mFirstLayout:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher3/widget/view/WidgetPagedView;)Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    return-object v0
.end method

.method private enableHwLayersOnVisiblePages()V
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mChildrenLayersEnabled:Z

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildCount()I

    move-result v5

    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v8}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getVisiblePages([I)V

    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mTempVisiblePagesRange:[I

    aget v3, v8, v7

    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mTempVisiblePagesRange:[I

    aget v4, v8, v6

    if-ne v3, v4, :cond_0

    add-int/lit8 v8, v5, -0x1

    if-ge v4, v8, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    if-gt v3, v1, :cond_2

    if-gt v1, v4, :cond_2

    move v0, v6

    :goto_2
    invoke-virtual {v2, v0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->enableHardwareLayers(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-lez v3, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_2

    :cond_3
    return-void
.end method

.method private runFilter()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->runFilter(IZ)V

    return-void
.end method

.method private runFilter(IZ)V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mFilter:Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mFilter:Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    invoke-interface {v2, v3}, Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;->filterWidgets(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v2, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;->onSearchResult(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->updatePageCounts()V

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    move v0, p1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->invalidatePageData(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getCurrentPage()I

    move-result v0

    goto :goto_2
.end method

.method private syncWidgetPageItems(IZ)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getRowCount()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getColumnCount()I

    move-result v9

    mul-int v4, v8, v9

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    mul-int v5, p1, v4

    add-int v8, v5, v4

    iget-object v9, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-le v5, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    invoke-interface {v8, v5, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    const-string v8, "WidgetPagedView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "syncWidgetPageItems Page: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " immediate "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " subListOffsets "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    invoke-virtual {v6}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->removeAllViews()V

    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mFilterString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v9

    invoke-virtual {v6, v3, v8, v9}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->bindItems(Ljava/util/List;Ljava/lang/String;Lcom/android/launcher3/widget/controller/WidgetState$State;)V

    invoke-virtual {v6}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildCount()I

    move-result v7

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v7, :cond_0

    invoke-virtual {v6, v1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/view/WidgetItemView;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Lcom/android/launcher3/widget/view/WidgetItemView;->supportLongClick()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updatePageCounts()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getRowCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getColumnCount()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mNumWidgetPages:I

    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;->addFocusables(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public applySearchResult(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->runFilter(IZ)V

    return-void
.end method

.method public changeColorForBg(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->changeColorForBg(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/view/PageIndicator;->changeColorForBg(Z)V

    :cond_2
    return-void
.end method

.method public clearAccessibilityFocus()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string v4, "WidgetPagedView"

    const-string v5, "Try to clear accessibility focus in widgets"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-virtual {v2, v1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x80

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public findItemView(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Lcom/android/launcher3/widget/view/WidgetItemView;
    .locals 12

    const/4 v9, 0x0

    if-nez p1, :cond_1

    const-string v10, "WidgetPagedView"

    const-string v11, "findInfo is null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_4

    invoke-virtual {p0, v7}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    instance-of v10, v5, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    if-eqz v10, :cond_3

    invoke-virtual {v5}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    invoke-virtual {v5, v4}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/view/WidgetItemView;

    instance-of v10, v0, Lcom/android/launcher3/widget/view/WidgetItemView;

    if-eqz v10, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getWidgets()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    if-eqz v2, :cond_2

    iget-object v10, v2, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    const-string v10, "WidgetPagedView"

    const-string v11, "can not find the anchorview"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    goto :goto_0
.end method

.method public abstract getColumnCount()I
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 5

    const v0, 0x7f090031

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getNextPage()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mNumWidgetPages:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDisplayItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPageCacheSize()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mPageCacheSize:I

    return v0
.end method

.method public abstract getRowCount()I
.end method

.method public getState()Lcom/android/launcher3/widget/controller/WidgetState$State;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    goto :goto_0
.end method

.method public abstract getWidgetItemFolderViewId()I
.end method

.method public abstract getWidgetItemSingleViewId()I
.end method

.method public abstract getWidgetPageLayoutId()I
.end method

.method public handleKeyEvent(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateWigetItems()V
    .locals 4

    iget-boolean v2, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDragInProgress:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/PageIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    instance-of v2, p0, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->runFilter()V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->requestLayout()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1
.end method

.method protected isContentsRefreshable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public notifyChangeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Lcom/android/launcher3/widget/controller/WidgetState$State;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    if-ne v2, v1, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, p1, v4}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/widget/view/WidgetItemView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;->onWidgetItemClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->invalidateWigetItems()V

    new-instance v0, Lcom/android/launcher3/widget/view/WidgetPagedView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/view/WidgetPagedView$1;-><init>(Lcom/android/launcher3/widget/view/WidgetPagedView;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDataReady(II)V
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->updatePageCounts()V

    const-string v1, "WidgetPagedView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataReady done, mWidgetItems = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getCurrentPage()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->runFilter(IZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;->onPagedViewTouchIntercepted()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0

    return-void
.end method

.method public onLauncherTransitionPrepare(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0

    return-void
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/widget/view/WidgetItemView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;->onWidgetItemLongClick(Landroid/view/View;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setDataReady()V

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setMeasuredDimension(II)V

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->onDataReady(II)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->onMeasure(II)V

    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetPagedView;->updateChildrenLayersEnabled(Z)V

    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setAccessibilityFocusChange(Z)V

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageBeginMoving()V

    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageEndMoving()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->updateChildrenLayersEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setAccessibilityFocusChange(Z)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public prepareInOut(IZ)V
    .locals 4

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mPageCacheSize:I

    if-ne p1, v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->invalidateWigetItems()V

    :cond_0
    if-ne p1, v2, :cond_2

    const/4 v1, 0x3

    :goto_0
    iput v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mPageCacheSize:I

    iget v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mPageCacheSize:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->loadAssociatedPages(I)V

    iget v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mPageCacheSize:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mItemViewPool:Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;->clear()V

    :cond_1
    const-string v1, "WidgetPagedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareInOut items : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method protected setAccessibilityFocusChange(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->setAccessibilityEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    return-void
.end method

.method public setSearchFilter(Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mFilter:Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;

    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mFilterString:Ljava/lang/String;

    return-void
.end method

.method public setWidgetItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public snapToPageSALoggging(Z)V
    .locals 8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    instance-of v2, p0, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f0901bb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090122

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, v0

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f0901bc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090121

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, v0

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method public syncPageItems(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/view/WidgetPagedView;->syncWidgetPageItems(IZ)V

    return-void
.end method

.method protected syncPages()V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->removeAllViews()V

    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    invoke-interface {v4}, Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;->isWhiteWallpaper()Z

    move-result v2

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mNumWidgetPages:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getWidgetPageLayoutId()I

    move-result v5

    invoke-virtual {v4, v5, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mItemViewPool:Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->setViewRecycler(Lcom/android/launcher3/widget/view/ViewRecycler;)V

    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mItemOnKeyListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->setItemOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->changeColorForBg(Z)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateCellSpan()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->updateCellSpan()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateChildrenLayersEnabled(Z)V
    .locals 5

    const/4 v3, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->isPageMoving()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-boolean v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mChildrenLayersEnabled:Z

    if-eq v0, v4, :cond_1

    iput-boolean v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mChildrenLayersEnabled:Z

    iget-boolean v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mChildrenLayersEnabled:Z

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->enableHwLayersOnVisiblePages()V

    :cond_1
    return-void

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getPageCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->enableHardwareLayers(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
