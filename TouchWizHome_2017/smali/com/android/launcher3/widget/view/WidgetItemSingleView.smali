.class public Lcom/android/launcher3/widget/view/WidgetItemSingleView;
.super Lcom/android/launcher3/widget/view/WidgetItemView;
.source "WidgetItemSingleView.java"


# static fields
.field private static final sPreviewFadeInDuration:J = 0x50L

.field private static final sPreviewFadeInStaggerDuration:J = 0x14L


# instance fields
.field private mDims:Landroid/widget/TextView;

.field private mImage:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/view/WidgetItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private applyPreview(Lcom/android/launcher3/common/drawable/FastBitmapDrawable;IZZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x50

    int-to-long v4, p2

    const-wide/16 v6, 0x14

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected applyCellSpan()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mWidgets:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getSpan()[I

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mDims:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mDimensionsFormatString:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    aget v5, v0, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aget v5, v0, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mDims:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mTalkbackDimen:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    aget v5, v0, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aget v5, v0, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected applyTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->semSetHoverPopupType(I)V

    return-void
.end method

.method public changeColorForBg(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mTitle:Landroid/widget/TextView;

    invoke-static {v2, v3, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mDims:Landroid/widget/TextView;

    invoke-static {v2, v3, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    if-eqz p1, :cond_0

    const v0, 0x7f0200bb

    :goto_0
    const v2, 0x7f11010f

    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :cond_0
    const v0, 0x7f0200ba

    goto :goto_0
.end method

.method protected getPreviewImageHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getPreviewImageWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getTitleTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method protected loadPreview(Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;Ljava/util/List;II)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/PendingAddItemInfo;",
            ">;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mPreviewUtils:Lcom/android/launcher3/widget/model/WidgetPreviewUtils;

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getProviderInfo()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p3, p4}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->generatePreview(Lcom/android/launcher3/Launcher;Ljava/lang/Object;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->onFinishInflate()V

    const v0, 0x7f110100

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f110101

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mDims:Landroid/widget/TextView;

    const v0, 0x7f110102

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mImage:Landroid/widget/ImageView;

    const v0, 0x7f11010e

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mUninstallIcon:Landroid/widget/ImageView;

    return-void
.end method

.method protected postToSetPreview(Ljava/lang/Object;II)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {v0, p1}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->applyPreview(Lcom/android/launcher3/common/drawable/FastBitmapDrawable;IZZ)V

    goto :goto_0
.end method

.method protected resetToRecycle()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->resetToRecycle()V

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f110100

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetItemSingleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
