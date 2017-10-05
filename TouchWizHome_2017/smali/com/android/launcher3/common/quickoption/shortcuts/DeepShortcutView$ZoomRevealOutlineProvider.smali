.class Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;
.super Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;
.source "DeepShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZoomRevealOutlineProvider"
.end annotation


# instance fields
.field private final mFullHeight:F

.field private final mPivotLeft:Z

.field private final mTranslateView:Landroid/view/View;

.field private final mTranslateX:F

.field private final mTranslateYMultiplier:F

.field private final mZoomView:Landroid/view/View;


# direct methods
.method public constructor <init>(IILandroid/graphics/Rect;Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;-><init>(IILandroid/graphics/Rect;)V

    iput-object p4, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;->mTranslateView:Landroid/view/View;

    iput-object p5, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;->mZoomView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;->mFullHeight:F

    if-eqz p6, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    iput v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;->mTranslateYMultiplier:F

    iput-boolean p7, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;->mPivotLeft:Z

    if-eqz p7, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    :goto_1
    iput v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;->mTranslateX:F

    return-void

    :cond_0
    const/high16 v0, -0x41000000    # -0.5f

    goto :goto_0

    :cond_1
    iget v0, p3, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_1
.end method


# virtual methods
.method public setProgress(F)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;->setProgress(F)V

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;->mZoomView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;->mZoomView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v0, v2

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;->mTranslateView:Landroid/view/View;

    iget v3, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;->mTranslateYMultiplier:F

    iget v4, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;->mFullHeight:F

    sub-float/2addr v4, v0

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;->mPivotLeft:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    div-float v3, v0, v5

    add-float v1, v2, v3

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;->mTranslateView:Landroid/view/View;

    iget v3, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;->mTranslateX:F

    sub-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$ZoomRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    div-float v3, v0, v5

    sub-float v1, v2, v3

    goto :goto_0
.end method
