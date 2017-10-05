.class public Lcom/android/launcher3/widget/view/WidgetFolderPagedView;
.super Lcom/android/launcher3/widget/view/WidgetPagedView;
.source "WidgetFolderPagedView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getDesiredHeight()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getPageCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getPageAt(I)Lcom/android/launcher3/widget/view/WidgetPageLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getDesiredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getDesiredWidth()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getPageCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getPageAt(I)Lcom/android/launcher3/widget/view/WidgetPageLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getDesiredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public bridge synthetic getPageAt(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getPageAt(I)Lcom/android/launcher3/widget/view/WidgetPageLayout;

    move-result-object v0

    return-object v0
.end method

.method public getPageAt(I)Lcom/android/launcher3/widget/view/WidgetPageLayout;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    return-object v0
.end method

.method public getRowCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0004

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

    const v0, 0x7f04005c

    return v0
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->onConfigurationChangedIfNeeded()V

    return-void
.end method
