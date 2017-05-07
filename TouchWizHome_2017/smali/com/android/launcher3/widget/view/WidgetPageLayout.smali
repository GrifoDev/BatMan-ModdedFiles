.class public Lcom/android/launcher3/widget/view/WidgetPageLayout;
.super Landroid/widget/GridLayout;
.source "WidgetPageLayout.java"

# interfaces
.implements Lcom/android/launcher3/common/base/view/Page;


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetPageLayout"

.field private static final sPaint:Landroid/graphics/Paint;


# instance fields
.field private mDesiredHeight:I

.field private mDesiredWidth:I

.field private mHorizontalGap:I

.field private mItemKeyListener:Landroid/view/View$OnKeyListener;

.field private mVerticalGap:I

.field private mViewRecycler:Lcom/android/launcher3/widget/view/ViewRecycler;

.field private mWhiteWallpaper:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->sPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->WidgetPageLayout:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mHorizontalGap:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mVerticalGap:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mDesiredWidth:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mDesiredHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private configureNextFocus(ILandroid/view/View;I)I
    .locals 4

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_3

    invoke-virtual {p2, p1}, Landroid/view/View;->setNextFocusRightId(I)V

    :cond_0
    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    :cond_1
    const/4 v1, 0x0

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setNextFocusLeftId(I)V

    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p2, p1}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_1
.end method

.method private getContentRowCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getRowCount()I

    move-result v0

    return v0
.end method


# virtual methods
.method public bindItems(Ljava/util/List;Ljava/lang/String;Lcom/android/launcher3/widget/controller/WidgetState$State;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/widget/controller/WidgetState$State;",
            ")V"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v6, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v7, :cond_5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v11, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mViewRecycler:Lcom/android/launcher3/widget/view/ViewRecycler;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v9, :cond_4

    move v8, v9

    :goto_2
    invoke-interface {v11, v8, p0}, Lcom/android/launcher3/widget/view/ViewRecycler;->get(ZLandroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/view/WidgetItemView;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/widget/view/WidgetItemView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcom/android/launcher3/widget/view/WidgetItemView;->setWidgets(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getColumnCount()I

    move-result v8

    rem-int v3, v0, v8

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getColumnCount()I

    move-result v8

    div-int v4, v0, v8

    new-instance v5, Landroid/widget/GridLayout$LayoutParams;

    sget-object v8, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    invoke-static {v4, v8}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v8

    sget-object v11, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    invoke-static {v3, v11}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v11

    invoke-direct {v5, v8, v11}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    const v8, 0x800033

    invoke-virtual {v5, v8}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    if-lez v4, :cond_2

    iget v8, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mVerticalGap:I

    iput v8, v5, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    :cond_2
    if-lez v3, :cond_3

    iget v8, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mHorizontalGap:I

    invoke-virtual {v5, v8}, Landroid/widget/GridLayout$LayoutParams;->setMarginStart(I)V

    :cond_3
    invoke-virtual {v2, p2}, Lcom/android/launcher3/widget/view/WidgetItemView;->applyTileAndSpan(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mWhiteWallpaper:Z

    invoke-virtual {v2, v8}, Lcom/android/launcher3/widget/view/WidgetItemView;->changeColorForBg(Z)V

    invoke-virtual {v2, p3, v10}, Lcom/android/launcher3/widget/view/WidgetItemView;->changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V

    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mItemKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v8}, Lcom/android/launcher3/widget/view/WidgetItemView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0, v2, v5}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->requestPreview(Lcom/android/launcher3/widget/view/WidgetPageLayout;)V

    invoke-direct {p0, v6, v2, v0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->configureNextFocus(ILandroid/view/View;I)I

    move-result v6

    goto :goto_1

    :cond_4
    move v8, v10

    goto :goto_2

    :cond_5
    return-void
.end method

.method public changeColorForBg(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mWhiteWallpaper:Z

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/widget/view/WidgetItemView;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/launcher3/widget/view/WidgetItemView;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/widget/view/WidgetItemView;->changeColorForBg(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/widget/view/WidgetItemView;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/launcher3/widget/view/WidgetItemView;

    invoke-virtual {v2, p1, p2}, Lcom/android/launcher3/widget/view/WidgetItemView;->changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public enableHardwareLayers(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    sget-object v1, Lcom/android/launcher3/widget/view/WidgetPageLayout;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDesiredHeight()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getContentRowCount()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mDesiredHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getContentRowCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mVerticalGap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getDesiredWidth()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getColumnCount()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mDesiredWidth:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getRowCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mHorizontalGap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getPageItemCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/GridLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getPageItemCount()I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    int-to-float v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    :cond_0
    const/4 v3, 0x1

    :cond_1
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 7

    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mViewRecycler:Lcom/android/launcher3/widget/view/ViewRecycler;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildCount()I

    move-result v0

    new-array v1, v0, [Landroid/view/ViewGroup;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/GridLayout;->removeAllViews()V

    array-length v5, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, v1, v4

    iget-object v6, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mViewRecycler:Lcom/android/launcher3/widget/view/ViewRecycler;

    invoke-interface {v6, v3}, Lcom/android/launcher3/widget/view/ViewRecycler;->recycle(Landroid/view/ViewGroup;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-super {p0}, Landroid/widget/GridLayout;->removeAllViews()V

    :cond_2
    return-void
.end method

.method public removeAllViewsOnPage()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->removeAllViews()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->enableHardwareLayers(Z)V

    return-void
.end method

.method public removeViewOnPageAt(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mViewRecycler:Lcom/android/launcher3/widget/view/ViewRecycler;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->removeViewAt(I)V

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mViewRecycler:Lcom/android/launcher3/widget/view/ViewRecycler;

    invoke-interface {v1, v0}, Lcom/android/launcher3/widget/view/ViewRecycler;->recycle(Landroid/view/ViewGroup;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->removeViewAt(I)V

    goto :goto_0
.end method

.method public setAccessibilityEnabled(Z)V
    .locals 5

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->setImportantForAccessibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/widget/view/WidgetItemView;

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setItemOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mItemKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public setViewRecycler(Lcom/android/launcher3/widget/view/ViewRecycler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mViewRecycler:Lcom/android/launcher3/widget/view/ViewRecycler;

    return-void
.end method

.method public updateCellSpan()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/widget/view/WidgetItemView;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/launcher3/widget/view/WidgetItemView;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/view/WidgetItemView;->applyCellSpan()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
