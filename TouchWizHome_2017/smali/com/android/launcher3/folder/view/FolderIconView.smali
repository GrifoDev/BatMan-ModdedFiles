.class public Lcom/android/launcher3/folder/view/FolderIconView;
.super Lcom/android/launcher3/common/view/IconView;
.source "FolderIconView.java"

# interfaces
.implements Lcom/android/launcher3/folder/FolderEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;,
        Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;
    }
.end annotation


# static fields
.field private static final ALPHA_SCAN_AREA:I = 0x14

.field private static final CONSUMPTION_ANIMATION_DURATION:I = 0x64

.field private static final DROP_IN_ANIMATION_DURATION:I = 0x12c

.field private static final FINAL_ITEM_ANIMATION_DURATION:I = 0xc8

.field private static final INITIAL_ITEM_ANIMATION_DURATION:I = 0x122

.field private static final INNER_RING_GROWTH_FACTOR:F = 0.15f

.field private static final INVALID_INT_VALUE:I = -0x1

.field public static final NUM_ITEMS_IN_PREVIEW:I = 0x9

.field private static final TAG:Ljava/lang/String; = "FolderIconView"

.field private static sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

.field private static sStaticValuesDirty:Z


# instance fields
.field private mAnimParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

.field private mAnimating:Z

.field private mAvailableSpaceInPreview:I

.field private mBaselineIconScale:F

.field private mBaselineIconSize:I

.field private mDragInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

.field private mFolderIconBitmap:Landroid/graphics/Bitmap;

.field private mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

.field private mFolderView:Lcom/android/launcher3/folder/view/FolderView;

.field private mHiddenItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Lcom/android/launcher3/folder/FolderInfo;

.field private mIntrinsicIconSize:I

.field private mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

.field private mMiniIconCol:I

.field private mMiniIconGap:I

.field private mOldBounds:Landroid/graphics/Rect;

.field private mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

.field private mPreviewBackground:Landroid/widget/ImageView;

.field private mPreviewFactorChanged:Z

.field private mPreviewIcons:Landroid/widget/ImageView;

.field private mPreviewLocalOffsetX:I

.field private mPreviewLocalOffsetY:I

.field private mPreviewOffsetX:I

.field private mPreviewOffsetY:I

.field private mPreviewPadding:I

.field private mShadow:Landroid/widget/ImageView;

.field private mSlop:F

.field private mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

.field private mTotalWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/folder/view/FolderIconView;->sStaticValuesDirty:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/view/IconView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mTotalWidth:I

    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAnimating:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mOldBounds:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    new-instance v0, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;-><init>(FFFI)V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    new-instance v0, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;-><init>(FFFI)V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAnimParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mHiddenItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/view/IconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mTotalWidth:I

    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAnimating:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mOldBounds:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    new-instance v0, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;-><init>(FFFI)V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    new-instance v0, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;-><init>(FFFI)V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAnimParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mHiddenItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher3/folder/view/FolderIconView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    return p1
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/folder/view/FolderIconView;->sStaticValuesDirty:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/launcher3/folder/view/FolderIconView;->sStaticValuesDirty:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/folder/view/FolderIconView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mHiddenItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/folder/view/FolderIconView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->drawPreviews()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/folder/view/FolderIconView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/folder/view/FolderIconView;)Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAnimParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/launcher3/folder/view/FolderIconView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAnimating:Z

    return p1
.end method

.method private animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V
    .locals 8

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->computePreviewItemDrawingParams(ILcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;)Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-result-object v4

    iget v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v6, v0, v1

    iget v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAvailableSpaceInPreview:I

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float v3, v0, v2

    iget v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAvailableSpaceInPreview:I

    iget v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float v5, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAnimParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iput-object p1, v0, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v7

    new-instance v0, Lcom/android/launcher3/folder/view/FolderIconView$3;

    move-object v1, p0

    move v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/folder/view/FolderIconView$3;-><init>(Lcom/android/launcher3/folder/view/FolderIconView;ZFLcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;FF)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/launcher3/folder/view/FolderIconView$4;

    invoke-direct {v0, p0, p4}, Lcom/android/launcher3/folder/view/FolderIconView$4;-><init>(Lcom/android/launcher3/folder/view/FolderIconView;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    int-to-long v0, p2

    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private computeLockedPreviewDrawingParams(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getMeasuredWidth()I

    move-result v7

    new-instance v4, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v10, v10, v8, v11}, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;-><init>(FFFI)V

    iget v8, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIntrinsicIconSize:I

    if-ne v8, v0, :cond_0

    iget v8, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mTotalWidth:I

    if-ne v8, v7, :cond_0

    iget-boolean v8, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    if-eqz v8, :cond_1

    :cond_0
    move v1, v0

    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v6, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v5, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewPadding:I

    mul-int/lit8 v8, v5, 0x2

    sub-int v2, v6, v8

    int-to-float v8, v2

    int-to-float v9, v1

    div-float v3, v8, v9

    iput v10, v4, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transX:F

    iput v10, v4, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transY:F

    iput v11, v4, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->overlayAlpha:I

    iput v3, v4, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    iput-object p1, v4, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v11, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    :cond_1
    return-object v4
.end method

.method private computeMiniIconSize(I)V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    if-lez p1, :cond_1

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconGap:I

    :goto_0
    iget v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconGap:I

    goto :goto_0
.end method

.method private computePreviewDrawingParams(II)V
    .locals 6

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/launcher3/folder/view/FolderIconView;->computeMiniIconSize(I)V

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIntrinsicIconSize:I

    if-ne v3, p1, :cond_0

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mTotalWidth:I

    if-ne v3, p2, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    if-eqz v3, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIntrinsicIconSize:I

    iput p2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mTotalWidth:I

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewIcons:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewPadding:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v2, v3

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAvailableSpaceInPreview:I

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAvailableSpaceInPreview:I

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconGap:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconSize:I

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIntrinsicIconSize:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconScale:F

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mTotalWidth:I

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mAvailableSpaceInPreview:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewOffsetX:I

    add-int v3, v1, v0

    iput v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewOffsetY:I

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewLocalOffsetX:I

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewLocalOffsetY:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    :cond_1
    return-void
.end method

.method private computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->computePreviewDrawingParams(II)V

    return-void
.end method

.method private computePreviewItemDrawingParams(ILcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;)Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;
    .locals 9

    const/4 v8, 0x0

    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    rem-int v7, p1, v7

    sub-int v1, v6, v7

    :goto_0
    iget v6, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    div-int v2, p1, v6

    iget v6, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconSize:I

    iget v7, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconGap:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v1

    int-to-float v4, v6

    iget v6, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconSize:I

    iget v7, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconGap:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v2

    int-to-float v5, v6

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconScale:F

    const/4 v0, 0x0

    if-nez p2, :cond_1

    new-instance p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    invoke-direct {p2, v4, v5, v3, v8}, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;-><init>(FFFI)V

    :goto_1
    return-object p2

    :cond_0
    iget v6, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mMiniIconCol:I

    rem-int v1, p1, v6

    goto :goto_0

    :cond_1
    iput v4, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transX:F

    iput v5, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transY:F

    iput v3, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    iput v8, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->overlayAlpha:I

    goto :goto_1
.end method

.method private drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;)V
    .locals 9

    const/16 v8, 0xff

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v5, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewLocalOffsetX:I

    add-int v2, v5, v6

    iget v5, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transY:F

    float-to-int v5, v5

    iget v6, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewLocalOffsetY:I

    add-int v4, v5, v6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v5, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v6, v4

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    instance-of v5, v0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    if-eqz v5, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->getBrightness()I

    move-result v3

    iget v5, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->overlayAlpha:I

    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->setBrightness(I)V

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->setBrightness(I)V

    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    iget v5, p2, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->overlayAlpha:I

    invoke-static {v5, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method

.method private drawPreviews()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    move/from16 v19, v0

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v18 .. v20}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    new-instance v16, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_2

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/IconInfo;

    const/4 v15, 0x0

    if-eqz v7, :cond_1

    iget-object v0, v7, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    if-eqz v18, :cond_1

    iget-object v0, v7, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    :cond_1
    if-eqz v7, :cond_8

    if-eqz v15, :cond_7

    invoke-static {v15}, Lcom/android/launcher3/common/view/LiveIconManager;->isCalendarPackage(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->applyKnoxLiveIcon(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v18

    if-eqz v18, :cond_5

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    iget-object v0, v7, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/folder/view/FolderIconView;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_2
    const/4 v6, 0x0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnabled()Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/folder/FolderInfo;->isLockedFolderOpenedOnce()Z

    move-result v18

    if-nez v18, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0200b8

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/launcher3/folder/view/FolderIconView;->computeLockedPreviewDrawingParams(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;)V

    const/4 v6, 0x1

    :cond_3
    if-nez v6, :cond_11

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x9

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v14

    add-int/lit8 v9, v14, -0x1

    :goto_3
    if-ltz v9, :cond_11

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher3/common/view/IconView;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v7, :cond_9

    const-string v18, "FolderIconView"

    const-string v19, "ignore drawPreviewItem because IconInfo is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    :cond_5
    invoke-static {v15}, Lcom/android/launcher3/common/view/LiveIconManager;->isCalendarPackage(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    iget-object v0, v7, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getLiveIconDrawable(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v5

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v0, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v0, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :cond_8
    const-string v18, "FolderIconView"

    const-string v19, "ignore computePreviewDrawingParams because IconInfo is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    const/4 v15, 0x0

    iget-object v0, v7, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    if-eqz v18, :cond_a

    iget-object v0, v7, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mHiddenItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->applyKnoxLiveIcon(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v18

    if-eqz v18, :cond_c

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    iget-object v0, v7, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_5
    const/4 v4, 0x0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mIntrinsicIconSize:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconScale:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconScale:F

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v9, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->computePreviewItemDrawingParams(ILcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;)Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;)V

    const/16 v18, 0x0

    cmpl-float v18, v4, v18

    if-lez v18, :cond_4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mBaselineIconScale:F

    goto/16 :goto_4

    :cond_c
    invoke-static {v15}, Lcom/android/launcher3/common/view/LiveIconManager;->isCalendarPackage(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    iget-object v0, v7, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getLiveIconDrawable(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v11

    invoke-virtual {v7}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v18

    if-nez v18, :cond_d

    iget v0, v7, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    move/from16 v18, v0

    if-eqz v18, :cond_e

    :cond_d
    const/16 v18, 0x1

    :goto_6
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    move-object v5, v11

    goto/16 :goto_5

    :cond_e
    const/16 v18, 0x0

    goto :goto_6

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getTopDrawable(Lcom/android/launcher3/common/view/IconView;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_5

    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getTopDrawable(Lcom/android/launcher3/common/view/IconView;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_5

    :cond_11
    sget-object v18, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher3/folder/FolderInfo;->color:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_12

    sget-object v18, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher3/folder/FolderInfo;->color:I

    move/from16 v19, v0

    aget-object v3, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v3, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->getMaskedIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewIcons:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->setShadow()V

    goto/16 :goto_0
.end method

.method public static fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 12

    const/4 v2, 0x0

    const-class v7, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {p2, v7}, Lcom/android/launcher3/folder/FolderInfo;->getBoundView(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p2, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-nez v7, :cond_1

    :cond_0
    const/4 v7, 0x0

    iput-boolean v7, p2, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    invoke-virtual {p2}, Lcom/android/launcher3/folder/FolderInfo;->unbind()V

    const/4 v4, 0x0

    :cond_1
    if-eqz v4, :cond_4

    const-string v7, "FolderIconView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "already view bound. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_3
    :goto_0
    return-object v4

    :cond_4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030022

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v7, :cond_7

    move-object v4, v6

    check-cast v4, Lcom/android/launcher3/folder/view/FolderIconView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->setClipToPadding(Z)V

    const v7, 0x7f0e0008

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p2, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0e0007

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    const v7, 0x7f0e006e

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewIcons:Landroid/widget/ImageView;

    const v7, 0x7f0e006d

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mShadow:Landroid/widget/ImageView;

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->setIconDisplay(I)V

    move-object v5, v4

    iget-object v7, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    new-instance v8, Lcom/android/launcher3/folder/view/FolderIconView$1;

    invoke-direct {v8, v5}, Lcom/android/launcher3/folder/view/FolderIconView$1;-><init>(Lcom/android/launcher3/folder/view/FolderIconView;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget v7, p2, Lcom/android/launcher3/folder/FolderInfo;->color:I

    if-nez v7, :cond_5

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    iget v7, p2, Lcom/android/launcher3/folder/FolderInfo;->color:I

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->setIconBackgroundColor(I)V

    :cond_6
    invoke-virtual {v4, p2}, Lcom/android/launcher3/folder/view/FolderIconView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iput-object p2, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    const v7, 0x7f070033

    invoke-virtual {p0, v7}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p2, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/android/launcher3/folder/view/FolderView;->fromXml(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/launcher3/folder/view/FolderView;->setMultiSelectManager(Lcom/android/launcher3/common/multiselect/MultiSelectManager;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/launcher3/folder/view/FolderView;->setDragMgr(Lcom/android/launcher3/common/drag/DragManager;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/view/FolderView;->setFolderIcon(Lcom/android/launcher3/folder/view/FolderIconView;)V

    invoke-virtual {v3, p2, p3}, Lcom/android/launcher3/folder/view/FolderView;->bind(Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;)V

    iput-object v3, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    invoke-direct {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->drawPreviews()V

    new-instance v7, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->getIconSize()I

    move-result v8

    invoke-direct {v7, p0, v4, v8}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/folder/view/FolderIconView;I)V

    iput-object v7, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    invoke-virtual {p2, v4}, Lcom/android/launcher3/folder/FolderInfo;->addListener(Lcom/android/launcher3/folder/FolderEventListener;)V

    const v7, 0x7f0e0071

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/android/launcher3/folder/view/FolderIconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshBadge()V

    iget-wide v8, p2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v10, -0x66

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->changeTextColorForBg(Z)V

    goto/16 :goto_0

    :cond_7
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid resid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private getDrawable(Lcom/android/launcher3/common/view/IconView;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p1}, Lcom/android/launcher3/common/view/IconView;->getIconVew()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getLiveIconDrawable(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    .locals 3

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, p1, p2}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    invoke-static {v0, v2}, Lcom/android/launcher3/util/BitmapUtils;->createIconDrawable(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method private getLocalCenterForIndex(I[I)F
    .locals 7

    const/16 v3, 0x9

    const/high16 v6, 0x40000000    # 2.0f

    if-lt p1, v3, :cond_0

    const/4 v2, 0x4

    :goto_0
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/folder/view/FolderIconView;->computePreviewItemDrawingParams(ILcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;)Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget v4, v3, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transX:F

    iget v5, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewOffsetX:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transX:F

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget v4, v3, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transY:F

    iget v5, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewOffsetY:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transY:F

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transX:F

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget v4, v4, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    iget v5, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIntrinsicIconSize:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float v0, v3, v4

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->transY:F

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget v4, v4, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    iget v5, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIntrinsicIconSize:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float v1, v3, v4

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p2, v3

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mParams:Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher3/folder/view/FolderIconView$PreviewItemDrawingParams;->scale:F

    return v3

    :cond_0
    move v2, p1

    goto :goto_0
.end method

.method private getMaskedIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->needMaskedIcon(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap;->getScaledWidth(Landroid/graphics/Canvas;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->getScaledWidth(Landroid/graphics/Canvas;)I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v0, p1, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0, p2, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private getTopDrawable(Lcom/android/launcher3/common/view/IconView;)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher3/common/view/IconView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/launcher3/folder/view/FolderIconView;->sStaticValuesDirty:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager;->getFolderStyle()Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/Bitmap;

    sput-object v1, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v7

    :cond_1
    new-instance v1, Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    new-instance v1, Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/event/StylusEventHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewPadding:I

    return-void
.end method

.method private final needMaskedIcon(Landroid/graphics/Bitmap;)Z
    .locals 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/theme/OpenThemeManager;->getFolderStyle()Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getFolderType()I

    move-result v9

    if-ne v9, v8, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/lit8 v9, v9, -0x14

    div-int/lit8 v3, v9, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0x14

    div-int/lit8 v4, v9, 0x2

    move v5, v3

    add-int/lit8 v0, v3, 0x14

    :goto_1
    if-ge v5, v0, :cond_3

    move v6, v4

    add-int/lit8 v1, v4, 0x14

    :goto_2
    if-ge v6, v1, :cond_2

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    const/16 v10, 0xff

    if-ne v9, v10, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v7, v8

    goto :goto_0
.end method

.method private onDrop(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/folder/view/FolderIconView;->onDrop(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private onDrop(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/lang/Runnable;Z)V
    .locals 24

    const/16 v20, 0x0

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v14, v5, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v5, v12, v14

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v12, v5, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v14, -0x65

    cmp-long v5, v12, v14

    if-nez v5, :cond_6

    const/16 v20, 0x1

    :cond_0
    :goto_0
    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    iget-object v5, v5, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    iget-object v5, v5, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    invoke-virtual {v5, v9}, Lcom/android/launcher3/common/base/view/CellLayout;->hideFolderAccept(Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;)V

    :cond_1
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v14, -0x1

    cmp-long v5, v12, v14

    if-eqz v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v5

    iget-wide v12, v5, Lcom/android/launcher3/folder/FolderInfo;->id:J

    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    :cond_2
    const/4 v5, -0x1

    move-object/from16 v0, p1

    iput v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    const/4 v5, -0x1

    move-object/from16 v0, p1

    iput v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    if-eqz p2, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/FolderInfo;->isAlphabeticalOrder()Z

    move-result v5

    if-nez v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v4

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v6}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    move-object/from16 v7, p3

    if-nez v7, :cond_3

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getScaleX()F

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getScaleY()F

    move-result v23

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/folder/view/FolderIconView;->setScaleX(F)V

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/folder/view/FolderIconView;->setScaleY(F)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v7}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result p4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->setScaleX(F)V

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->setScaleY(F)V

    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mIntrinsicIconSize:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getMeasuredWidth()I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9}, Lcom/android/launcher3/folder/view/FolderIconView;->computePreviewDrawingParams(II)V

    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->getLocalCenterForIndex(I[I)F

    move-result v21

    const/4 v5, 0x0

    const/4 v9, 0x0

    aget v9, v19, v9

    int-to-float v9, v9

    mul-float v9, v9, p4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    aput v9, v19, v5

    const/4 v5, 0x1

    const/4 v9, 0x1

    aget v9, v19, v9

    int-to-float v9, v9

    mul-float v9, v9, p4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    aput v9, v19, v5

    const/4 v5, 0x0

    aget v5, v19, v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v5, v9

    const/4 v9, 0x1

    aget v9, v19, v9

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    invoke-virtual {v7, v5, v9}, Landroid/graphics/Rect;->offset(II)V

    const/16 v5, 0x9

    move/from16 v0, p5

    if-ge v0, v5, :cond_7

    const/high16 v8, 0x3f000000    # 0.5f

    :goto_1
    mul-float v11, v21, p4

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v13, 0x12c

    new-instance v14, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v14, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v15, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v15, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    const/16 v17, 0x0

    move-object/from16 v5, p2

    move v12, v11

    move-object/from16 v16, p6

    move-object/from16 v18, p0

    invoke-virtual/range {v4 .. v18}, Lcom/android/launcher3/common/view/DragLayer;->animateView(Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    if-eqz p9, :cond_4

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/folder/view/FolderIconView;->addItem(Lcom/android/launcher3/common/base/item/IconInfo;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mHiddenItems:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->drawPreviews()V

    new-instance v5, Lcom/android/launcher3/folder/view/FolderIconView$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    invoke-direct {v5, v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView$2;-><init>(Lcom/android/launcher3/folder/view/FolderIconView;Lcom/android/launcher3/common/base/item/IconInfo;Ljava/lang/Runnable;)V

    const-wide/16 v12, 0x12c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12, v13}, Lcom/android/launcher3/folder/view/FolderIconView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_2
    return-void

    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v12, v5, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v14, -0x66

    cmp-long v5, v12, v14

    if-nez v5, :cond_0

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget v9, v9, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    if-ge v5, v9, :cond_0

    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v8, 0x0

    goto :goto_1

    :cond_8
    if-eqz p9, :cond_9

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/folder/view/FolderIconView;->addItem(Lcom/android/launcher3/common/base/item/IconInfo;)V

    :cond_9
    if-eqz p7, :cond_a

    const/4 v5, 0x0

    move-object/from16 v0, p7

    iput-boolean v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    :cond_a
    if-eqz p6, :cond_b

    invoke-interface/range {p6 .. p6}, Ljava/lang/Runnable;->run()V

    :cond_b
    if-eqz p8, :cond_5

    invoke-interface/range {p8 .. p8}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method public static release()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/folder/view/FolderIconView;->sStaticValuesDirty:Z

    return-void
.end method

.method private updateLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshBadge()V

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->drawPreviews()V

    return-void
.end method

.method private willAcceptItem(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 3

    const/4 v1, 0x1

    iget v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->acceptDropToFolder()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->isFull()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-boolean v2, v2, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-nez v2, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptDrop(Ljava/lang/Object;)Z
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->willAcceptItem(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addItem(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0700a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    return-void
.end method

.method public addItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderInfo;->add(Ljava/util/ArrayList;)V

    return-void
.end method

.method public animateChildScale(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;)V
    .locals 11

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v2

    int-to-float v3, v2

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    int-to-float v4, v4

    div-float v1, v3, v4

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewIcons:Landroid/widget/ImageView;

    new-array v4, v9, [Landroid/animation/PropertyValuesHolder;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v9, [F

    aput v1, v6, v7

    aput v10, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v4, v7

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v9, [F

    aput v1, v6, v7

    aput v10, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/android/launcher3/common/view/IconView;->animateChildScale(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method public applyStyle()V
    .locals 4

    invoke-super {p0}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewFactorChanged:Z

    :cond_0
    iget v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewIcons:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mIconSize:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->drawPreviews()V

    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/common/view/IconView;->cancelLongPress()V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method protected getBounceAnimation()Lcom/android/launcher3/util/animation/AppIconBounceAnimation;
    .locals 3

    new-instance v0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewIcons:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;-><init>(Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

.method public getFolderIconBitmapWithPlate()Landroid/graphics/Bitmap;
    .locals 13

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget v1, v9, Lcom/android/launcher3/folder/FolderInfo;->color:I

    if-lez v1, :cond_0

    sget-object v9, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    if-nez v9, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02005e

    iget-object v11, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v9}, Lcom/android/launcher3/util/BitmapUtils;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_0
    iget-object v9, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v9, v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v6, v9, v10

    int-to-float v9, v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v7, v9, v10

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v0, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v9, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v9, v12, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v5

    :cond_1
    sget-object v9, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v9, v1

    goto :goto_0
.end method

.method public getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    return-object v0
.end method

.method public getFolderView()Lcom/android/launcher3/folder/view/FolderView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewIcons:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/common/view/IconView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mSlop:F

    return-void
.end method

.method public onDragEnter(Ljava/lang/Object;)V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->willAcceptItem(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    iget v3, v1, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v4, v1, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->setCell(II)V

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->setCellLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->animateToAcceptState()V

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->showFolderAccept(Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;)V

    check-cast p1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mDragInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    goto :goto_0
.end method

.method public onDragExit()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->animateToNaturalState()V

    return-void
.end method

.method public onDragExit(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->onDragExit()V

    return-void
.end method

.method public onDragOver(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/graphics/Rect;)V
    .locals 8

    const-wide/16 v4, -0x66

    const/4 v1, 0x0

    const/4 v7, 0x0

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v2, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v0}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    :cond_0
    iget-wide v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v1

    new-instance v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct {v7}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    iput-object v1, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iput-object v0, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    :cond_2
    if-nez v7, :cond_3

    move-object v7, p1

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->notifyDrop()V

    if-eqz v1, :cond_4

    iget-object v2, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/folder/view/FolderIconView;->onDrop(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    :cond_4
    return-void
.end method

.method public onDrop(Ljava/util/ArrayList;Landroid/graphics/Rect;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_4

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    const/4 v9, 0x0

    iget-object v2, v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_3

    iget-object v3, v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v4, v2, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    iget-object v2, v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v2}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    iget-wide v4, v3, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v3

    new-instance v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct {v9}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    iput-object v3, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    iget-object v2, v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iput-object v2, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iget-object v2, v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    iput-object v2, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    :cond_1
    if-nez v9, :cond_2

    move-object v9, v14

    :cond_2
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_4
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v2, v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/launcher3/folder/view/FolderView;->setSuppressOnAdd(Z)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/folder/view/FolderIconView;->addItems(Ljava/util/ArrayList;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/16 v16, 0x0

    :goto_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_7

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v4, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/high16 v6, 0x3f800000    # 1.0f

    add-int v7, v13, v16

    iget-object v8, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v11}, Lcom/android/launcher3/folder/view/FolderIconView;->onDrop(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/lang/Runnable;Z)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public onItemAdded(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->updateLayout()V

    return-void
.end method

.method public onItemRemoved(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshCountBadge(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->updateLayout()V

    return-void
.end method

.method public onItemsAdded(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->updateLayout()V

    return-void
.end method

.method public onItemsRemoved(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshCountBadge(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->updateLayout()V

    return-void
.end method

.method public onLockedFolderOpenStateUpdated(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->updateLayout()V

    return-void
.end method

.method public onOrderingChanged(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->updateLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/folder/view/FolderIconView;->sStaticValuesDirty:Z

    invoke-super {p0}, Lcom/android/launcher3/common/view/IconView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 7

    const v4, 0x7f070033

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    iget v0, v1, Lcom/android/launcher3/folder/FolderInfo;->mBadgeCount:I

    if-le v0, v5, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070065

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v0, v5, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070064

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->onTouchOutofIconArea(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->cancelLongPress()V

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/common/view/IconView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/util/event/StylusEventHelper;->checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->postCheckForLongPress()V

    goto :goto_0

    :pswitch_1
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mSlop:F

    invoke-static {p0, v1, v2, v3}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performCreateAnimation(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;FLjava/lang/Runnable;)V
    .locals 10

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getDrawable(Lcom/android/launcher3/common/view/IconView;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->computePreviewDrawingParams(II)V

    const/16 v0, 0x122

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v8, v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->addItem(Lcom/android/launcher3/common/base/item/IconInfo;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    if-eqz v9, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/view/ViewGroup;->measure(II)V

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/ViewGroup;->layout(IIII)V

    :cond_0
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move/from16 v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/folder/view/FolderIconView;->onDrop(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    return-void
.end method

.method public performDestroyAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3

    instance-of v1, p1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getTopDrawable(Lcom/android/launcher3/common/view/IconView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->computePreviewDrawingParams(II)V

    const/16 v1, 0xc8

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/launcher3/folder/view/FolderIconView;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public refreshBadge()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mFolderView:Lcom/android/launcher3/folder/view/FolderView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    instance-of v0, v8, Lcom/android/launcher3/common/view/IconView;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    check-cast v8, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v8}, Lcom/android/launcher3/common/view/IconView;->refreshBadge()V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v19

    const/16 v18, 0x0

    if-eqz v19, :cond_3

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderInfo;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v12, v19

    check-cast v12, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v0, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/item/IconInfo;

    iget v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    move/from16 v21, v0

    add-int v18, v18, v21

    goto :goto_1

    :cond_2
    move/from16 v0, v18

    iput v0, v12, Lcom/android/launcher3/folder/FolderInfo;->mBadgeCount:I

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mBadgeView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    const/16 v17, 0x0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnabled()Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mInfo:Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/folder/FolderInfo;->isLockedFolderOpenedOnce()Z

    move-result v20

    if-nez v20, :cond_4

    const/16 v17, 0x1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v14

    if-eqz v14, :cond_a

    invoke-virtual {v14}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v20

    if-eqz v20, :cond_a

    const/4 v15, 0x1

    :goto_2
    if-nez v15, :cond_d

    if-eqz v18, :cond_d

    if-nez v17, :cond_d

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v20

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mIsSetThemeBadgeBg:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/theme/OpenThemeManager;->preloadBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_5

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/folder/view/FolderIconView;->mIsSetThemeBadgeBg:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mBadgeView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    iget v2, v6, Lcom/android/launcher3/folder/FolderInfo;->mBadgeCount:I

    const/16 v20, 0x3e8

    move/from16 v0, v20

    if-lt v2, v0, :cond_6

    const/4 v11, 0x1

    const/16 v2, 0x3e7

    :cond_6
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v2, v0, :cond_b

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070033

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    iget-object v0, v6, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070064

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/launcher3/Utilities;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v20, "ar"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    const-string v20, "fa"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    :cond_7
    invoke-static {v3, v5}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_4
    if-eqz v11, :cond_8

    new-instance v16, Ljava/lang/StringBuffer;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x2b

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mBadgeView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->updateBadgeLayout()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mBadgeView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    :goto_5
    return-void

    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_b
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070033

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    iget-object v0, v6, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070065

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_c
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView;->mBadgeView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderInfo;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f070033

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget-object v0, v10, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method public refreshCountBadge(I)V
    .locals 2

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mCountBadgeView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mCountBadgeView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mCountBadgeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mCountBadgeView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public refreshFolderIcon()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->drawPreviews()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->invalidate()V

    return-void
.end method

.method public setIconBackgroundColor(I)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    if-ltz p1, :cond_0

    sget-object v0, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView;->mPreviewBackground:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/launcher3/folder/view/FolderIconView;->sSharedIconBgBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_2
    const-string v0, "FolderIconView"

    const-string v1, "setIconBackgroundColor : sSharedIconBgBitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
