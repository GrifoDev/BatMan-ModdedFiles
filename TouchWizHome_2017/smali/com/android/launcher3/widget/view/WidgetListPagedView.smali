.class public Lcom/android/launcher3/widget/view/WidgetListPagedView;
.super Lcom/android/launcher3/widget/view/WidgetPagedView;
.source "WidgetListPagedView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/view/WidgetListPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/view/WidgetListPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/view/WidgetPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getColumnCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetListPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getRowCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetListPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getWidgetItemFolderViewId()I
    .locals 1

    const v0, 0x7f04005d

    return v0
.end method

.method public getWidgetItemSingleViewId()I
    .locals 1

    const v0, 0x7f04005e

    return v0
.end method

.method public getWidgetPageLayoutId()I
    .locals 1

    const v0, 0x7f040060

    return v0
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetListPagedView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetListPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-super {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->onConfigurationChangedIfNeeded()V

    return-void
.end method
