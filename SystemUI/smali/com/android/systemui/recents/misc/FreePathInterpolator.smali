.class public Lcom/android/systemui/recents/misc/FreePathInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "FreePathInterpolator.java"


# instance fields
.field private mArcLength:F

.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->initPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .locals 20

    const v13, 0x3b03126f    # 0.002f

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object v7

    array-length v13, v7

    div-int/lit8 v6, v13, 0x3

    new-array v13, v6, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    new-array v13, v6, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mArcLength:F

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move v3, v2

    :goto_0
    if-ge v5, v6, :cond_2

    add-int/lit8 v2, v3, 0x1

    aget v4, v7, v3

    add-int/lit8 v3, v2, 0x1

    aget v11, v7, v2

    add-int/lit8 v2, v3, 0x1

    aget v12, v7, v3

    cmpl-float v13, v4, v8

    if-nez v13, :cond_0

    cmpl-float v13, v11, v9

    if-eqz v13, :cond_0

    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "The Path cannot have discontinuity in the X axis."

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_0
    cmpg-float v13, v11, v9

    if-gez v13, :cond_1

    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "The Path cannot loop back on itself."

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aput v11, v13, v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aput v12, v13, v5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mArcLength:F

    float-to-double v14, v13

    sub-float v13, v11, v9

    float-to-double v0, v13

    move-wide/from16 v16, v0

    sub-float v13, v12, v10

    float-to-double v0, v13

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    add-double v14, v14, v16

    double-to-float v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mArcLength:F

    move v9, v11

    move v10, v12

    move v8, v4

    add-int/lit8 v5, v5, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getArcLength()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mArcLength:F

    return v0
.end method

.method public getInterpolation(F)F
    .locals 12

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v11, 0x3fc00000    # 1.5f

    const/4 v10, 0x0

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    array-length v8, v8

    add-int/lit8 v0, v8, -0x1

    sget-boolean v8, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v8, :cond_7

    cmpl-float v8, p1, v10

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    return v8

    :cond_0
    const/high16 v8, -0x40800000    # -1.0f

    cmpg-float v8, p1, v8

    if-gez v8, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletLayout:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3d8f5c29    # 0.07f

    add-float/2addr v8, v9

    return v8

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->hasSoftNaviBar:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3da3d70a    # 0.08f

    add-float/2addr v8, v9

    return v8

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3dda740d

    add-float/2addr v8, v9

    return v8

    :cond_3
    cmpg-float v8, p1, v10

    if-gez v8, :cond_6

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletLayout:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3dd70a3d    # 0.105f

    mul-float/2addr v9, p1

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    return v8

    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->hasSoftNaviBar:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3df5c28f    # 0.12f

    mul-float/2addr v9, p1

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    return v8

    :cond_5
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3e23d70a    # 0.16f

    mul-float/2addr v9, p1

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    return v8

    :cond_6
    cmpl-float v8, p1, v9

    if-ltz v8, :cond_9

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v0

    return v8

    :cond_7
    cmpg-float v8, p1, v10

    if-gtz v8, :cond_8

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    return v8

    :cond_8
    cmpl-float v8, p1, v9

    if-ltz v8, :cond_9

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v0

    return v8

    :cond_9
    :goto_0
    sub-int v8, v0, v4

    const/4 v9, 0x1

    if-le v8, v9, :cond_b

    add-int v8, v4, v0

    div-int/lit8 v3, v8, 0x2

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v3

    cmpg-float v8, p1, v8

    if-gez v8, :cond_a

    move v0, v3

    goto :goto_0

    :cond_a
    move v4, v3

    goto :goto_0

    :cond_b
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v0

    iget-object v9, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v9, v9, v4

    sub-float v7, v8, v9

    cmpl-float v8, v7, v10

    if-nez v8, :cond_c

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    return v8

    :cond_c
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v4

    sub-float v6, p1, v8

    div-float v2, v6, v7

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v5, v8, v4

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v1, v8, v0

    sub-float v8, v1, v5

    mul-float/2addr v8, v2

    add-float/2addr v8, v5

    return v8
.end method

.method public getInterpolationOnLandscape(F)F
    .locals 12

    const/high16 v11, 0x3fc00000    # 1.5f

    const/4 v10, 0x0

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    array-length v8, v8

    add-int/lit8 v0, v8, -0x1

    cmpl-float v8, p1, v10

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    return v8

    :cond_0
    const/high16 v8, -0x40800000    # -1.0f

    cmpg-float v8, p1, v8

    if-gez v8, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletLayout:Z

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3d921736

    add-float/2addr v8, v9

    return v8

    :cond_1
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3d9fbe77    # 0.078f

    add-float/2addr v8, v9

    return v8

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3dda740d

    add-float/2addr v8, v9

    return v8

    :cond_3
    cmpg-float v8, p1, v10

    if-gez v8, :cond_6

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletLayout:Z

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3ddb22d1    # 0.107f

    mul-float/2addr v9, p1

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    return v8

    :cond_4
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3def9db2    # 0.117f

    mul-float/2addr v9, p1

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    return v8

    :cond_5
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3e23d70a    # 0.16f

    mul-float/2addr v9, p1

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    return v8

    :cond_6
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, p1, v8

    if-ltz v8, :cond_7

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v0

    return v8

    :cond_7
    :goto_0
    sub-int v8, v0, v4

    const/4 v9, 0x1

    if-le v8, v9, :cond_9

    add-int v8, v4, v0

    div-int/lit8 v3, v8, 0x2

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v3

    cmpg-float v8, p1, v8

    if-gez v8, :cond_8

    move v0, v3

    goto :goto_0

    :cond_8
    move v4, v3

    goto :goto_0

    :cond_9
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v0

    iget-object v9, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v9, v9, v4

    sub-float v7, v8, v9

    cmpl-float v8, v7, v10

    if-nez v8, :cond_a

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    return v8

    :cond_a
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v4

    sub-float v6, p1, v8

    div-float v2, v6, v7

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v5, v8, v4

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v1, v8, v0

    sub-float v8, v1, v5

    mul-float/2addr v8, v2

    add-float/2addr v8, v5

    return v8
.end method

.method public getX(F)F
    .locals 11

    const/4 v10, 0x0

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    array-length v8, v8

    add-int/lit8 v0, v8, -0x1

    cmpg-float v8, p1, v10

    if-gtz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v0

    return v8

    :cond_0
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, p1, v8

    if-ltz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v4

    return v8

    :cond_1
    :goto_0
    sub-int v8, v0, v4

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    add-int v8, v4, v0

    div-int/lit8 v3, v8, 0x2

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v3

    cmpg-float v8, p1, v8

    if-gez v8, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v0

    iget-object v9, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v9, v9, v4

    sub-float v7, v8, v9

    cmpl-float v8, v7, v10

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v4

    return v8

    :cond_4
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    sub-float v6, p1, v8

    div-float v2, v6, v7

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v5, v8, v4

    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v1, v8, v0

    sub-float v8, v1, v5

    mul-float/2addr v8, v2

    add-float/2addr v8, v5

    return v8
.end method
