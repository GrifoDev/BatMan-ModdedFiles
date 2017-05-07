.class public final Lcom/android/launcher3/common/drag/DragViewHelper;
.super Ljava/lang/Object;
.source "DragViewHelper.java"


# static fields
.field public static final DRAG_BITMAP_PADDING:I = 0x6

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static final sDragOutlinePaint:Landroid/graphics/Paint;

.field private static final sTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/drag/DragViewHelper;->sTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/drag/DragViewHelper;->sDragOutlinePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDragBitmap(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;Z)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    instance-of v4, p0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    sget-object v4, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v4, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    invoke-static {p0, v4, v3, v5, p2}, Lcom/android/launcher3/common/drag/DragViewHelper;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZZ)V

    sget-object v4, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    move-object v4, p0

    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/IconView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/common/drag/DragViewHelper;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int v4, v3, v4

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static createDragOutline(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 5

    invoke-static {p0}, Lcom/android/launcher3/common/drag/DragOutlineHelper;->obtain(Landroid/content/Context;)Lcom/android/launcher3/common/drag/DragOutlineHelper;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getOutlineColor()I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v3, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v3, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/launcher3/common/drag/DragOutlineHelper;->createIconDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V

    sget-object v3, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v3
.end method

.method public static createDragOutline(Landroid/content/Context;Landroid/view/View;I)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/launcher3/common/drag/DragOutlineHelper;->obtain(Landroid/content/Context;)Lcom/android/launcher3/common/drag/DragOutlineHelper;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v2, 0x0

    instance-of v5, p1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v5, :cond_3

    move-object v5, p1

    check-cast v5, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderIconView;->getIconVew()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v5, p1

    check-cast v5, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderIconView;->getIconSize()I

    move-result v2

    move v4, v2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    add-int/lit8 v5, v4, 0x6

    add-int/lit8 v6, v2, 0x6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/lit8 v5, v4, 0x6

    add-int/lit8 v6, v2, 0x6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    sget-object v5, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v5, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    const/4 v6, 0x6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {p1, v5, v6, v7, v8}, Lcom/android/launcher3/common/drag/DragViewHelper;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZZ)V

    sget-object v5, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0, v5, p2}, Lcom/android/launcher3/common/drag/DragOutlineHelper;->createIconDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V

    sget-object v5, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v5

    :cond_3
    instance-of v5, p1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v5, :cond_0

    move-object v5, p1

    check-cast v5, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/view/IconView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    move v4, v2

    goto :goto_0
.end method

.method public static createWidgetBitmap(Landroid/view/View;[I)Landroid/graphics/Bitmap;
    .locals 9

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    aget v4, p1, v7

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    aget v4, p1, v8

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    aget v4, p1, v7

    aget v5, p1, v8

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v4, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3, v1}, Landroid/view/View;->measure(II)V

    aget v4, p1, v7

    aget v5, p1, v8

    invoke-virtual {p0, v7, v7, v4, v5}, Landroid/view/View;->layout(IIII)V

    sget-object v4, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    sget-object v4, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method

.method public static createWidgetDragOutline(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 12

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {p0}, Lcom/android/launcher3/common/drag/DragOutlineHelper;->obtain(Landroid/content/Context;)Lcom/android/launcher3/common/drag/DragOutlineHelper;

    move-result-object v2

    move-object v5, p0

    check-cast v5, Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getOutlineColor()I

    move-result v1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    float-to-int v5, v5

    mul-int/lit8 v3, v5, 0x4

    sget-object v5, Lcom/android/launcher3/common/drag/DragViewHelper;->sDragOutlinePaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v5, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v5, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v3

    int-to-float v8, v3

    sub-int v9, p1, v3

    int-to-float v9, v9

    sub-int v10, p2, v3

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v7, Lcom/android/launcher3/common/drag/DragViewHelper;->sDragOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v11, v11, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    sget-object v5, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0, v5, v1}, Lcom/android/launcher3/common/drag/DragOutlineHelper;->createWidgetDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V

    sget-object v5, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v5
.end method

.method private static drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZZ)V
    .locals 13

    sget-object v2, Lcom/android/launcher3/common/drag/DragViewHelper;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    instance-of v9, p0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v9, :cond_0

    if-eqz p3, :cond_0

    move-object v9, p0

    check-cast v9, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v9}, Lcom/android/launcher3/folder/view/FolderIconView;->getIconVew()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/common/drag/DragViewHelper;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    int-to-float v9, p2

    const/high16 v10, 0x40400000    # 3.0f

    div-float/2addr v9, v10

    int-to-float v10, p2

    const/high16 v11, 0x40400000    # 3.0f

    div-float/2addr v10, v11

    iget v11, v1, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    check-cast p0, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getIconSize()I

    move-result v8

    sget-object v9, Lcom/android/launcher3/common/drag/DragViewHelper;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    div-int/lit8 v11, p2, 0x2

    add-int/2addr v11, v8

    div-int/lit8 v12, p2, 0x2

    add-int/2addr v12, v8

    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v9, Lcom/android/launcher3/common/drag/DragViewHelper;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_0
    instance-of v9, p0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v9, :cond_4

    if-eqz p4, :cond_1

    move-object v9, p0

    check-cast v9, Lcom/android/launcher3/common/view/IconView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/android/launcher3/common/view/IconView;->setTitleViewVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v9

    neg-int v9, v9

    div-int/lit8 v10, p2, 0x2

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v10

    neg-int v10, v10

    div-int/lit8 v11, p2, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v9, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    check-cast p0, Lcom/android/launcher3/common/view/IconView;

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/launcher3/common/view/IconView;->setTitleViewVisibility(I)V

    goto :goto_0

    :cond_1
    move-object v9, p0

    check-cast v9, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v9}, Lcom/android/launcher3/common/view/IconView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher3/common/drag/DragViewHelper;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v11

    add-int/2addr v11, p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v12

    add-int/2addr v12, p2

    invoke-virtual {v2, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    div-int/lit8 v9, p2, 0x2

    iget v10, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-int/lit8 v10, p2, 0x2

    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    instance-of v9, p0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v9, :cond_3

    check-cast p0, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getIconBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    if-nez v3, :cond_2

    move-object v3, v0

    :cond_2
    const/4 v9, 0x2

    new-array v6, v9, [Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    aput-object v3, v6, v9

    const/4 v9, 0x1

    aput-object v7, v6, v9

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v9

    neg-int v9, v9

    div-int/lit8 v10, p2, 0x2

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v10

    neg-int v10, v10

    div-int/lit8 v11, p2, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v9, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private static getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0
.end method
