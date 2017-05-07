.class public Lcom/android/systemui/infinity/background/GradientBackground;
.super Ljava/lang/Object;
.source "GradientBackground.java"


# instance fields
.field private gridentData:[F

.field imageHeight:F

.field private inputColor:[[F

.field private inputPosition:[F

.field private final vertexArray:Lcom/android/systemui/infinity/common/VertexArray;


# direct methods
.method public constructor <init>([F[[FF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x45390000    # 2960.0f

    iput v0, p0, Lcom/android/systemui/infinity/background/GradientBackground;->imageHeight:F

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputPosition:[F

    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    iput p3, p0, Lcom/android/systemui/infinity/background/GradientBackground;->imageHeight:F

    invoke-direct {p0}, Lcom/android/systemui/infinity/background/GradientBackground;->transformGrident()V

    new-instance v0, Lcom/android/systemui/infinity/common/VertexArray;

    iget-object v1, p0, Lcom/android/systemui/infinity/background/GradientBackground;->gridentData:[F

    invoke-direct {v0, v1}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v0, p0, Lcom/android/systemui/infinity/background/GradientBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    return-void
.end method

.method private transformGrident()V
    .locals 12

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputPosition:[F

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    mul-int/lit8 v9, v9, 0x5

    mul-int/lit8 v9, v9, 0x6

    new-array v9, v9, [F

    iput-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->gridentData:[F

    const/4 v3, 0x0

    :goto_0
    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputPosition:[F

    array-length v9, v9

    if-ge v3, v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputPosition:[F

    iget-object v10, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputPosition:[F

    aget v10, v10, v3

    iget v11, p0, Lcom/android/systemui/infinity/background/GradientBackground;->imageHeight:F

    div-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v10, v11, v10

    aput v10, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    array-length v9, v9

    if-ge v3, v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    aget-object v8, v9, v3

    const/4 v5, 0x0

    :goto_2
    array-length v9, v8

    if-ge v5, v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    aget-object v9, v9, v3

    iget-object v10, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    aget-object v10, v10, v3

    aget v10, v10, v5

    const/high16 v11, 0x437f0000    # 255.0f

    div-float/2addr v10, v11

    aput v10, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_3
    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputPosition:[F

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_a

    const/4 v5, 0x0

    :goto_4
    const/4 v9, 0x6

    if-ge v5, v9, :cond_9

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez v5, :cond_4

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputPosition:[F

    add-int/lit8 v10, v3, 0x1

    aget v9, v9, v10

    iget-object v10, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputPosition:[F

    aget v10, v10, v3

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v7, v9, v10

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    aget-object v9, v9, v3

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    add-int/lit8 v11, v3, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget v10, v10, v11

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v2, v9, v10

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    aget-object v9, v9, v3

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    add-int/lit8 v11, v3, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget v10, v10, v11

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v1, v9, v10

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    aget-object v9, v9, v3

    const/4 v10, 0x2

    aget v9, v9, v10

    iget-object v10, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    add-int/lit8 v11, v3, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x2

    aget v10, v10, v11

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v0, v9, v10

    :cond_3
    :goto_5
    mul-int/lit8 v9, v5, 0x5

    mul-int/lit8 v10, v3, 0x6

    mul-int/lit8 v10, v10, 0x5

    add-int v4, v9, v10

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->gridentData:[F

    aput v6, v9, v4

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->gridentData:[F

    add-int/lit8 v10, v4, 0x1

    aput v7, v9, v10

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->gridentData:[F

    add-int/lit8 v10, v4, 0x2

    aput v2, v9, v10

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->gridentData:[F

    add-int/lit8 v10, v4, 0x3

    aput v1, v9, v10

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->gridentData:[F

    add-int/lit8 v10, v4, 0x4

    aput v0, v9, v10

    const-string/jumbo v9, "color"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "index = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "color"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "gridentData = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "color"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "gridentData = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "color"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "gridentData = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    :cond_4
    const/4 v9, 0x1

    if-eq v5, v9, :cond_5

    const/4 v9, 0x5

    if-ne v5, v9, :cond_6

    :cond_5
    const/high16 v6, -0x40800000    # -1.0f

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputPosition:[F

    add-int/lit8 v10, v3, 0x1

    aget v7, v9, v10

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    add-int/lit8 v10, v3, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x0

    aget v2, v9, v10

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    add-int/lit8 v10, v3, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x1

    aget v1, v9, v10

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    add-int/lit8 v10, v3, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x2

    aget v0, v9, v10

    goto/16 :goto_5

    :cond_6
    const/4 v9, 0x2

    if-ne v5, v9, :cond_7

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputPosition:[F

    add-int/lit8 v10, v3, 0x1

    aget v7, v9, v10

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    add-int/lit8 v10, v3, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x0

    aget v2, v9, v10

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    add-int/lit8 v10, v3, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x1

    aget v1, v9, v10

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    add-int/lit8 v10, v3, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x2

    aget v0, v9, v10

    goto/16 :goto_5

    :cond_7
    const/4 v9, 0x3

    if-ne v5, v9, :cond_8

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputPosition:[F

    aget v7, v9, v3

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    aget-object v9, v9, v3

    const/4 v10, 0x0

    aget v2, v9, v10

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    aget-object v9, v9, v3

    const/4 v10, 0x1

    aget v1, v9, v10

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    aget-object v9, v9, v3

    const/4 v10, 0x2

    aget v0, v9, v10

    goto/16 :goto_5

    :cond_8
    const/4 v9, 0x4

    if-ne v5, v9, :cond_3

    const/high16 v6, -0x40800000    # -1.0f

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputPosition:[F

    aget v7, v9, v3

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    aget-object v9, v9, v3

    const/4 v10, 0x0

    aget v2, v9, v10

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    aget-object v9, v9, v3

    const/4 v10, 0x1

    aget v1, v9, v10

    iget-object v9, p0, Lcom/android/systemui/infinity/background/GradientBackground;->inputColor:[[F

    aget-object v9, v9, v3

    const/4 v10, 0x2

    aget v0, v9, v10

    goto/16 :goto_5

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_a
    return-void
.end method


# virtual methods
.method public bindData(Lcom/android/systemui/infinity/common/ColorShaderProgram;)V
    .locals 5

    const/16 v4, 0x14

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/systemui/infinity/background/GradientBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    invoke-virtual {p1}, Lcom/android/systemui/infinity/common/ColorShaderProgram;->getPositionAttributeLocation()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/background/GradientBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    invoke-virtual {p1}, Lcom/android/systemui/infinity/common/ColorShaderProgram;->getColorAttributeLocation()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    return-void
.end method

.method public draw()V
    .locals 4

    const/4 v3, 0x6

    iget-object v2, p0, Lcom/android/systemui/infinity/background/GradientBackground;->gridentData:[F

    array-length v2, v2

    div-int/lit8 v2, v2, 0x5

    div-int/lit8 v1, v2, 0x6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    mul-int/lit8 v2, v0, 0x6

    invoke-static {v3, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
