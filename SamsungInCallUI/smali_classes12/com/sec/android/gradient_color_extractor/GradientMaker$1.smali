.class final Lcom/sec/android/gradient_color_extractor/GradientMaker$1;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "GradientMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gradient_color_extractor/GradientMaker;->getGradient(IIIIFF)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$angle:F

.field final synthetic val$colorA:I

.field final synthetic val$colorB:I

.field final synthetic val$gradient_hegith:I

.field final synthetic val$gradient_width:I

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(IIIFIF)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gradient_color_extractor/GradientMaker$1;->val$gradient_hegith:I

    iput p2, p0, Lcom/sec/android/gradient_color_extractor/GradientMaker$1;->val$colorA:I

    iput p3, p0, Lcom/sec/android/gradient_color_extractor/GradientMaker$1;->val$colorB:I

    iput p4, p0, Lcom/sec/android/gradient_color_extractor/GradientMaker$1;->val$angle:F

    iput p5, p0, Lcom/sec/android/gradient_color_extractor/GradientMaker$1;->val$gradient_width:I

    iput p6, p0, Lcom/sec/android/gradient_color_extractor/GradientMaker$1;->val$scale:F

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)Landroid/graphics/Shader;
    .locals 12

    const/4 v6, 0x2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/sec/android/gradient_color_extractor/GradientMaker$1;->val$gradient_hegith:I

    int-to-float v4, v2

    new-array v5, v6, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/gradient_color_extractor/GradientMaker$1;->val$colorA:I

    aput v3, v5, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/gradient_color_extractor/GradientMaker$1;->val$colorB:I

    aput v3, v5, v2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p0, Lcom/sec/android/gradient_color_extractor/GradientMaker$1;->val$angle:F

    iget v2, p0, Lcom/sec/android/gradient_color_extractor/GradientMaker$1;->val$gradient_width:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/gradient_color_extractor/GradientMaker$1;->val$gradient_hegith:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v9, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v8, v9, v11}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p0, Lcom/sec/android/gradient_color_extractor/GradientMaker$1;->val$scale:F

    iget v2, p0, Lcom/sec/android/gradient_color_extractor/GradientMaker$1;->val$scale:F

    iget v3, p0, Lcom/sec/android/gradient_color_extractor/GradientMaker$1;->val$gradient_width:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/gradient_color_extractor/GradientMaker$1;->val$gradient_hegith:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {v8, v8, v10}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, v8}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
