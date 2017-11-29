.class public Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;
.super Landroid/widget/LinearLayout;
.source "NotificationPreviewIconSlotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;
    }
.end annotation


# instance fields
.field private final MORE_TEXT_SHADOW_COLOR:I

.field private mCallback:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mIconBackground:Landroid/graphics/drawable/Drawable;

.field private mIconBackgroundOnWhiteWallpaper:Landroid/graphics/drawable/Drawable;

.field private mIconPadding:I

.field private mIconSize:I

.field private mInitialY:I

.field private mIsWallpaperWhite:Z

.field private mPressedView:Landroid/view/View;

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field private mTouchSlop:I

.field private mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mSineInOut33:Landroid/view/animation/Interpolator;

    const/high16 v0, 0x66000000

    iput v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->MORE_TEXT_SHADOW_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mSineInOut33:Landroid/view/animation/Interpolator;

    const/high16 v0, 0x66000000

    iput v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->MORE_TEXT_SHADOW_COLOR:I

    return-void
.end method

.method private cloneDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-gtz v3, :cond_2

    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p1, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedChildView(II)Landroid/view/View;
    .locals 4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private imgShadow(Landroid/graphics/Bitmap;IIIIFF)Landroid/graphics/Bitmap;
    .locals 17

    sget-object v13, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    new-instance v12, Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-direct/range {v12 .. v16}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p3

    int-to-float v15, v0

    sub-float v15, v15, p6

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v16, p7

    move/from16 v0, v16

    invoke-direct {v3, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v13, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v11, v12, v3, v13}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v11}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v8, v13}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    new-instance v13, Landroid/graphics/PorterDuffXfermode;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v14}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/BlurMaskFilter;

    move/from16 v0, p5

    int-to-float v13, v0

    sget-object v14, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v13, v14}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v8}, Landroid/graphics/Paint;->reset()V

    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move/from16 v0, p4

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v5, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v5, v13}, Landroid/graphics/Paint;-><init>(I)V

    const v13, -0x50506

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v6, v13, v14, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    return-object v9
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTouchSlop:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d05d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconSize:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d05d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02038d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02038e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconBackgroundOnWhiteWallpaper:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private isIconInContainer(Landroid/view/View;)Z
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isInContentArea(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setChildProperty(Landroid/view/View;)V
    .locals 8

    iget-object v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    iget v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconSize:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconSize:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    instance-of v4, p1, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->updateShadowAndTintColor(Landroid/widget/ImageView;)V

    :cond_0
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIsWallpaperWhite:Z

    if-eqz v4, :cond_3

    const v4, -0xbbbbbc

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIsWallpaperWhite:Z

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconBackgroundOnWhiteWallpaper:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->cloneDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    instance-of v4, p1, Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconPadding:I

    iget v5, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconPadding:I

    iget v6, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconPadding:I

    iget v7, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconPadding:I

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    return-void

    :cond_3
    const v4, -0x50506

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method private updateShadowAndTintColor(Landroid/widget/ImageView;)V
    .locals 10

    const v0, 0x7f130056

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIsWallpaperWhite:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0xbbbbbc

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, -0x50506

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_3
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v4, 0x66000000

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->imgShadow(Landroid/graphics/Bitmap;IIIIFF)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    move-object v0, p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->setChildProperty(Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    move-object v0, p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->setChildProperty(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public isTracking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTracking:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->init()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->init()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTracking:Z

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->isInContentArea(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTracking:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTracking:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getX()F

    move-result v8

    neg-float v8, v8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getY()F

    move-result v9

    neg-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v5, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v6, v8

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getX()F

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getY()F

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTracking:Z

    if-nez v8, :cond_1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    :cond_1
    return v7

    :pswitch_0
    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getSelectedChildView(II)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v7}, Landroid/view/View;->setPressed(Z)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    iput v6, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mInitialY:I

    goto :goto_0

    :pswitch_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    if-eqz v8, :cond_0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    invoke-virtual {v8, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setPressed(Z)V

    iput-object v10, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    :cond_2
    iget v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mInitialY:I

    sub-int/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTouchSlop:I

    if-le v8, v9, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mCallback:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;->goToLockShade()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :pswitch_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setPressed(Z)V

    iput-object v10, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTracking:Z

    goto :goto_0

    :pswitch_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    if-eqz v8, :cond_0

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getSelectedChildView(II)Landroid/view/View;

    move-result-object v4

    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    if-ne v8, v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->performClick()Z

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setPressed(Z)V

    iput-object v10, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTracking:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public performIconScaleAnim(Landroid/view/View;Z)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->isIconInContainer(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_1

    const v1, 0x3fc3d70a    # 1.53f

    :goto_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v2, v7, [Landroid/animation/Animator;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v8, [F

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v5

    aput v5, v4, v6

    aput v1, v4, v7

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v2, v7, [Landroid/animation/Animator;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v8, [F

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v5

    aput v5, v4, v6

    aput v1, v4, v7

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v2, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$1;-><init>(Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;ZLandroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public setCallback(Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mCallback:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;

    return-void
.end method

.method public setOnClickEvent(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public updateWhiteWallpaperIcon(Z)V
    .locals 4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIsWallpaperWhite:Z

    if-eq v3, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIsWallpaperWhite:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->setChildProperty(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
