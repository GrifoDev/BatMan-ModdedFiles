.class public Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;
.super Lcom/sec/android/gradient_color_extractor/Kmeans;
.source "GradientColorExtractor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gradient_color_extractor/Kmeans;-><init>()V

    return-void
.end method

.method public static checkSameColor([F[FFFF)Z
    .locals 8

    const/4 v7, 0x2

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    aget v4, p1, v3

    aget v5, p0, v3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v4, 0x43340000    # 180.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1

    mul-float v4, p2, v6

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    aget v4, p0, v2

    aget v5, p1, v2

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p3

    if-gez v4, :cond_3

    aget v4, p0, v7

    aget v5, p1, v7

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p4

    if-gez v4, :cond_3

    :goto_1
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    sub-float v4, v6, v0

    mul-float v5, p2, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method static findChromaticColorIndexForDoubleGrayColor([Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;IIFF)[I
    .locals 15

    aget-object v13, p0, p1

    iget v3, v13, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    aget-object v13, p0, p2

    iget v4, v13, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    const/4 v13, 0x3

    new-array v5, v13, [F

    const/4 v13, 0x3

    new-array v6, v13, [F

    invoke-static {v3, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-static {v4, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    sget v13, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_s:F

    add-float v13, v13, p3

    sget v14, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_b:F

    add-float v14, v14, p3

    invoke-static {v5, v13, v14}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->checkGayScale_with_value([FFF)Z

    move-result v10

    sget v13, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_s:F

    add-float v13, v13, p3

    sget v14, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_b:F

    add-float v14, v14, p3

    invoke-static {v6, v13, v14}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->checkGayScale_with_value([FFF)Z

    move-result v11

    const/4 v0, 0x0

    if-eqz v10, :cond_5

    if-eqz v11, :cond_5

    const/4 v13, 0x3

    new-array v7, v13, [F

    const/4 v13, 0x3

    new-array v8, v13, [F

    const/4 v12, -0x1

    const/4 v9, 0x0

    :goto_0
    array-length v13, p0

    if-ge v9, v13, :cond_1

    aget-object v13, p0, v9

    iget v1, v13, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    invoke-static {v1, v7}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget-object v13, p0, v9

    iget v13, v13, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->percentage:F

    cmpl-float v13, v13, p4

    if-ltz v13, :cond_1

    sget v13, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_s:F

    add-float v13, v13, p3

    sget v14, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_b:F

    add-float v14, v14, p3

    invoke-static {v7, v13, v14}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->checkGayScale_with_value([FFF)Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    move v12, v9

    :cond_0
    :goto_1
    aget-object v13, p0, v12

    iget v2, v13, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    invoke-static {v2, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    :cond_1
    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    move/from16 p2, v12

    const/4 v0, 0x1

    :cond_2
    :goto_2
    invoke-static {v3, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-static {v4, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput p1, v13, v14

    const/4 v14, 0x1

    aput p2, v13, v14

    return-object v13

    :cond_3
    const/4 v13, 0x1

    aget v13, v8, v13

    const/4 v14, 0x1

    aget v14, v7, v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_0

    move v12, v9

    goto :goto_1

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    if-eqz v10, :cond_2

    const/4 v0, 0x1

    goto :goto_2
.end method

.method static findChromaticColorIndexFromDominantColor([Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;IIFF)I
    .locals 7

    const/4 v6, 0x0

    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-le p1, p2, :cond_1

    const/4 v3, -0x1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, -0x1

    const/4 v5, 0x3

    new-array v1, v5, [F

    move v2, p1

    :goto_1
    if-gt v2, p2, :cond_0

    aget-object v5, p0, v2

    iget v0, v5, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    sget v5, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_s:F

    sget v6, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_b:F

    invoke-static {v1, v5, v6}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->checkGayScale_with_value([FFF)Z

    move-result v4

    if-eqz v4, :cond_4

    aget-object v5, p0, v2

    iget v5, v5, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->percentage:F

    cmpl-float v5, v5, p4

    if-ltz v5, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    aget-object v5, p0, v2

    iget v5, v5, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->percentage:F

    cmpl-float v5, v5, p3

    if-ltz v5, :cond_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    aget-object v5, p0, v2

    iget v5, v5, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->percentage:F

    cmpl-float v5, v5, p3

    if-ltz v5, :cond_0

    move v3, v2

    goto :goto_0
.end method

.method static find_2ChromaticGradientColorIndexFromDominantColor([Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;FF)[I
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, -0x1

    const v9, 0x3dcccccd    # 0.1f

    aget-object v7, p0, v11

    iget v7, v7, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->percentage:F

    const v8, 0x3f7d70a4    # 0.99f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v6, v7, v11

    const/4 v8, 0x1

    aput v1, v7, v8

    return-object v7

    :cond_0
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    invoke-static {p0, v11, v7, p1, p2}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->findChromaticColorIndexFromDominantColor([Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;IIFF)I

    move-result v6

    if-ne v6, v10, :cond_1

    const/4 v6, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v6, 0x1

    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    if-lt v2, v7, :cond_2

    const/4 v2, 0x0

    :cond_2
    add-int/lit8 v7, v6, 0x1

    array-length v8, p0

    add-int/lit8 v8, v8, -0x1

    invoke-static {p0, v7, v8, p1, p2}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->findChromaticColorIndexFromDominantColor([Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;IIFF)I

    move-result v1

    if-ne v1, v10, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    new-array v3, v12, [F

    new-array v4, v12, [F

    aget-object v7, p0, v6

    iget v7, v7, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    invoke-static {v7, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    move v5, v1

    :cond_4
    aget-object v7, p0, v5

    iget v7, v7, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;->color:I

    invoke-static {v7, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-static {v3, v4, v9, v9, v9}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->checkSameColor([F[FFFF)Z

    move-result v7

    if-eqz v7, :cond_5

    add-int/lit8 v7, v5, 0x1

    array-length v8, p0

    add-int/lit8 v8, v8, -0x1

    invoke-static {p0, v7, v8, p1, p2}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->findChromaticColorIndexFromDominantColor([Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;IIFF)I

    move-result v0

    if-ne v0, v10, :cond_6

    :cond_5
    :goto_1
    move v1, v5

    goto :goto_0

    :cond_6
    move v5, v0

    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    if-lt v5, v7, :cond_4

    goto :goto_1
.end method

.method protected static linear_interpolation(FFF)F
    .locals 1

    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method public static makeClusterrGroup_preset1(I)[I
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v1, 0x3

    if-ge p0, v1, :cond_0

    move p0, v1

    :cond_0
    new-array v0, p0, [I

    const/4 v3, -0x1

    aput v3, v0, v8

    const/high16 v3, -0x1000000

    aput v3, v0, v9

    const v3, -0x777778

    aput v3, v0, v10

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_1

    const/4 v3, 0x3

    new-array v3, v3, [F

    sub-int v4, v2, v1

    int-to-float v4, v4

    const/high16 v5, 0x43b40000    # 360.0f

    sub-int v6, p0, v1

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    aput v4, v3, v8

    aput v7, v3, v9

    aput v7, v3, v10

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
