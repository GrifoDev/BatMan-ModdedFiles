.class public Lcom/android/launcher3/util/animation/RevealOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "RevealOutlineProvider.java"


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentRadius:I

.field private final mOval:Landroid/graphics/Rect;

.field private mRadius0:F

.field private mRadius1:F


# direct methods
.method public constructor <init>(IIFF)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    iput p1, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mCenterX:I

    iput p2, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mCenterY:I

    iput p3, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mRadius0:F

    iput p4, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mRadius1:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mOval:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mOval:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mCurrentRadius:I

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method

.method public setProgress(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mRadius0:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mRadius1:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mCurrentRadius:I

    iget-object v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mOval:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mCenterX:I

    iget v2, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mCurrentRadius:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mOval:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mCenterY:I

    iget v2, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mCurrentRadius:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mOval:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mCenterX:I

    iget v2, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mCurrentRadius:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mOval:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mCenterY:I

    iget v2, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mCurrentRadius:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
