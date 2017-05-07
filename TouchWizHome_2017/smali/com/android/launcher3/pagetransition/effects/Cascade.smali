.class public Lcom/android/launcher3/pagetransition/effects/Cascade;
.super Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;
.source "Cascade.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;-><init>()V

    return-void
.end method


# virtual methods
.method protected adjustScrollProgress(F)F
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method protected getPivotValueX(FI)F
    .locals 2

    sget-boolean v1, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mLeftMove:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    int-to-float v0, p2

    goto :goto_0
.end method

.method protected getPivotValueY(FI)F
    .locals 2

    int-to-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected getRotationValue(FF)F
    .locals 2

    sget-boolean v1, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mLeftMove:Z

    if-eqz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    neg-float v0, v1

    goto :goto_0
.end method

.method protected getScrollDrawInward()F
    .locals 1

    const v0, 0x3f333333    # 0.7f

    return v0
.end method

.method protected getTranslationValueDeltaX(FF)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    const/high16 v1, 0x40400000    # 3.0f

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/pagetransition/effects/Cascade;->mShrinkTranslateX:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getTranslationValueX(FF)F
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mLeftMove:Z

    if-eqz v1, :cond_0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_1

    :cond_0
    sget-boolean v1, Lcom/android/launcher3/pagetransition/PageTransitionManager;->mLeftMove:Z

    if-nez v1, :cond_2

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_2

    :cond_1
    :goto_0
    return p2

    :cond_2
    move p2, v0

    goto :goto_0
.end method

.method protected getTranslationValueY(FF)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    const/high16 v1, 0x40400000    # 3.0f

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/pagetransition/effects/Cascade;->mShrinkTranslateY:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getZoomValueX(FF)F
    .locals 3

    const/high16 v0, 0x40800000    # 4.0f

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    sub-float v0, p2, v0

    return v0
.end method

.method protected getZoomValueY(FF)F
    .locals 3

    const/high16 v0, 0x3f000000    # 0.5f

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    sub-float v0, p2, v0

    return v0
.end method
