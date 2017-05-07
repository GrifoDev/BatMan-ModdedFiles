.class public Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;
.super Landroid/view/animation/Animation;
.source "IconViewAnimation.java"


# instance fields
.field private cx:F

.field private cy:F

.field private mAngleDegree:F

.field private mAngleRadian:F

.field private mFromCenterX:F

.field private mFromCenterY:F

.field private prevDx:F

.field private prevDy:F

.field private prevX:F

.field private prevY:F

.field private r:F

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;F)V
    .locals 2

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->view:Landroid/view/View;

    iput p2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->r:F

    const-wide/32 v0, 0x11170

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->setDuration(J)V

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->setRepeatCount(I)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->prevDx:F

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->prevDy:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-void

    :cond_0
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->mAngleDegree:F

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->mAngleDegree:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->mAngleRadian:F

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->cx:F

    float-to-double v0, v0

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->r:F

    float-to-double v2, v2

    iget v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->mAngleRadian:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->mFromCenterX:F

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->cy:F

    float-to-double v0, v0

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->r:F

    float-to-double v2, v2

    iget v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->mAngleRadian:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->mFromCenterY:F

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->prevX:F

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->mFromCenterX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->prevDx:F

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->prevY:F

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->mFromCenterY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->prevDy:F

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->mFromCenterX:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->prevX:F

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->mFromCenterY:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->prevY:F

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->prevDx:F

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->prevDy:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-void
.end method

.method public initialize(IIII)V
    .locals 3

    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v0

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->cx:F

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->cy:F

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->cx:F

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->prevX:F

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->cy:F

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;->prevY:F

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
