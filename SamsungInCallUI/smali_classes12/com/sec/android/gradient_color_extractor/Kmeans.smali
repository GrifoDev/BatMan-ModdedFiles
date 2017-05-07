.class public Lcom/sec/android/gradient_color_extractor/Kmeans;
.super Ljava/lang/Object;
.source "Kmeans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;
    }
.end annotation


# static fields
.field static mGrayscale_limite_b:F

.field static mGrayscale_limite_s:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x3df5c28f    # 0.12f

    sput v0, Lcom/sec/android/gradient_color_extractor/Kmeans;->mGrayscale_limite_s:F

    const/high16 v0, 0x3e800000    # 0.25f

    sput v0, Lcom/sec/android/gradient_color_extractor/Kmeans;->mGrayscale_limite_b:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateCenter(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v3, v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    add-int/2addr v1, v4

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    div-int v4, v3, v4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    div-int v5, v1, v5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    div-int v6, v0, v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    goto :goto_1
.end method

.method static checkGayScale_with_value([FFF)Z
    .locals 2

    const/4 v0, 0x1

    aget v1, p0, v0

    cmpg-float v1, v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x2

    aget v1, p0, v1

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static colorDistance_hsv_square2([F[F[F)F
    .locals 10

    const/high16 v9, 0x43340000    # 180.0f

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    aget v4, p1, v6

    aget v5, p0, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v4, v1, v9

    if-ltz v4, :cond_0

    const/high16 v4, 0x43b40000    # 360.0f

    sub-float v1, v4, v1

    :cond_0
    div-float/2addr v1, v9

    aget v4, p1, v7

    aget v5, p0, v7

    sub-float v2, v4, v5

    aget v4, p1, v8

    aget v5, p0, v8

    sub-float v0, v4, v5

    aget v4, p2, v6

    mul-float/2addr v1, v4

    aget v4, p2, v7

    mul-float/2addr v2, v4

    aget v4, p2, v8

    mul-float/2addr v0, v4

    mul-float v4, v1, v1

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    mul-float v5, v0, v0

    add-float v3, v4, v5

    return v3
.end method

.method static colorDistance_rgb_sqaure2(II)F
    .locals 7

    const v6, 0x3f666666    # 0.9f

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v6

    const v1, 0x3f99999a    # 1.2f

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v2, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, v6

    add-float/2addr v0, v1

    return v0
.end method

.method public static kMeans_hsv(Landroid/graphics/Bitmap;[I)[Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-static {v1, p1}, Lcom/sec/android/gradient_color_extractor/Kmeans;->kMeans_hsv([I[I)[Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;

    move-result-object v0

    return-object v0
.end method

.method static kMeans_hsv([I[I)[Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;
    .locals 21

    const/4 v10, 0x1

    move-object/from16 v0, p1

    array-length v3, v0

    new-array v5, v3, [Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;

    new-array v1, v3, [I

    new-array v2, v3, [[F

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_0

    aget v18, p1, v6

    aput v18, v1, v6

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    aput-object v18, v2, v6

    aget v18, v1, v6

    aget-object v19, v2, v6

    invoke-static/range {v18 .. v19}, Landroid/graphics/Color;->colorToHSV(I[F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [[F

    move-object/from16 v17, v0

    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_1

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    aput-object v18, v17, v6

    aget v18, p0, v6

    aget-object v19, v17, v6

    invoke-static/range {v18 .. v19}, Landroid/graphics/Color;->colorToHSV(I[F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v10, :cond_9

    new-array v0, v3, [Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_2

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    aput-object v18, v16, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_4
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_6

    const v13, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v14, 0x0

    aget-object v18, v17, v6

    sget v19, Lcom/sec/android/gradient_color_extractor/Kmeans;->mGrayscale_limite_s:F

    sget v20, Lcom/sec/android/gradient_color_extractor/Kmeans;->mGrayscale_limite_b:F

    invoke-static/range {v18 .. v20}, Lcom/sec/android/gradient_color_extractor/Kmeans;->checkGayScale_with_value([FFF)Z

    move-result v9

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v3, :cond_5

    aget-object v18, v2, v11

    sget v19, Lcom/sec/android/gradient_color_extractor/Kmeans;->mGrayscale_limite_s:F

    sget v20, Lcom/sec/android/gradient_color_extractor/Kmeans;->mGrayscale_limite_b:F

    invoke-static/range {v18 .. v20}, Lcom/sec/android/gradient_color_extractor/Kmeans;->checkGayScale_with_value([FFF)Z

    move-result v8

    if-nez v8, :cond_4

    if-nez v9, :cond_4

    aget-object v18, v17, v6

    aget-object v19, v2, v11

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    fill-array-data v20, :array_0

    invoke-static/range {v18 .. v20}, Lcom/sec/android/gradient_color_extractor/Kmeans;->colorDistance_hsv_square2([F[F[F)F

    move-result v4

    cmpg-float v18, v4, v13

    if-gez v18, :cond_3

    move v13, v4

    move v14, v11

    :cond_3
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_4
    if-eqz v8, :cond_3

    if-eqz v9, :cond_3

    aget-object v18, v17, v6

    aget-object v19, v2, v11

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    fill-array-data v20, :array_1

    invoke-static/range {v18 .. v20}, Lcom/sec/android/gradient_color_extractor/Kmeans;->colorDistance_hsv_square2([F[F[F)F

    move-result v4

    cmpg-float v18, v4, v13

    if-gez v18, :cond_3

    move v13, v4

    move v14, v11

    goto :goto_6

    :cond_5
    aget-object v18, v16, v14

    aget v19, p0, v6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_7
    if-ge v6, v3, :cond_7

    aget-object v18, v16, v6

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gradient_color_extractor/Kmeans;->calculateCenter(Ljava/util/List;)I

    move-result v15

    aput v15, v1, v6

    aget v18, v1, v6

    aget-object v19, v2, v6

    invoke-static/range {v18 .. v19}, Landroid/graphics/Color;->colorToHSV(I[F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_7
    if-nez v12, :cond_8

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v7, v18, v19

    const/4 v6, 0x0

    :goto_8
    array-length v0, v1

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_9

    new-instance v18, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;

    aget v19, v1, v6

    aget-object v20, v16, v6

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v7

    invoke-direct/range {v18 .. v20}, Lcom/sec/android/gradient_color_extractor/Kmeans$DominantColorResult;-><init>(IF)V

    aput-object v18, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    :cond_9
    new-instance v18, Lcom/sec/android/gradient_color_extractor/Kmeans$1;

    invoke-direct/range {v18 .. v18}, Lcom/sec/android/gradient_color_extractor/Kmeans$1;-><init>()V

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v5

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
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
