.class public Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;
.super Lcom/android/launcher3/util/animation/RevealOutlineAnimation;
.source "PillRevealOutlineProvider.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field protected mPillRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IILandroid/graphics/Rect;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/util/animation/RevealOutlineAnimation;-><init>()V

    iput p1, p0, Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;->mCenterX:I

    iput p2, p0, Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;->mCenterY:I

    iput-object p3, p0, Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;->mPillRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;->mOutlineRadius:F

    return-void
.end method


# virtual methods
.method public setProgress(F)V
    .locals 5

    iget v2, p0, Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;->mCenterX:I

    iget-object v3, p0, Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;->mPillRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;->mCenterX:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v2, v0

    mul-float/2addr v2, p1

    float-to-int v1, v2

    iget-object v2, p0, Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;->mPillRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;->mCenterX:I

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;->mPillRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;->mCenterY:I

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;->mPillRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;->mCenterX:I

    add-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;->mPillRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;->mCenterY:I

    add-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;->mOutlineRadius:F

    return-void
.end method

.method public shouldRemoveElevationDuringAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
