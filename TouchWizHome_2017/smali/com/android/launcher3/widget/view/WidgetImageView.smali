.class public Lcom/android/launcher3/widget/view/WidgetImageView;
.super Landroid/view/View;
.source "WidgetImageView.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mDstRectF:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    return-void
.end method

.method private updateDstRectF()V
    .locals 7

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetImageView;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetImageView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v6

    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapBounds()Landroid/graphics/Rect;
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetImageView;->updateDstRectF()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetImageView;->updateDstRectF()V

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mDstRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetImageView;->invalidate()V

    return-void
.end method
