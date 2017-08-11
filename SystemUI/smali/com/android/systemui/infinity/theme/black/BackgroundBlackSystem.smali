.class public Lcom/android/systemui/infinity/theme/black/BackgroundBlackSystem;
.super Lcom/android/systemui/infinity/background/BackgroundSystem;
.source "BackgroundBlackSystem.java"


# instance fields
.field private homeBGColor:[[F

.field private homeBGPosition:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x5

    const/4 v3, 0x3

    invoke-direct {p0, p1}, Lcom/android/systemui/infinity/background/BackgroundSystem;-><init>(Landroid/content/Context;)V

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/black/BackgroundBlackSystem;->homeBGPosition:[F

    new-array v0, v1, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_5

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/black/BackgroundBlackSystem;->homeBGColor:[[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x44140000    # 592.0f
        0x44b90000    # 1480.0f
        0x45071000    # 2161.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_1
    .array-data 4
        0x40400000    # 3.0f
        0x40e00000    # 7.0f
        0x42240000    # 41.0f
    .end array-data

    :array_2
    .array-data 4
        0x41100000    # 9.0f
        0x41980000    # 19.0f
        0x42880000    # 68.0f
    .end array-data

    :array_3
    .array-data 4
        0x41e00000    # 28.0f
        0x423c0000    # 47.0f
        0x42de0000    # 111.0f
    .end array-data

    :array_4
    .array-data 4
        0x424c0000    # 51.0f
        0x42880000    # 68.0f
        0x42e40000    # 114.0f
    .end array-data

    :array_5
    .array-data 4
        0x428c0000    # 70.0f
        0x42a40000    # 82.0f
        0x42d20000    # 105.0f
    .end array-data
.end method


# virtual methods
.method public getHomeGradientInputColor()[[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/black/BackgroundBlackSystem;->homeBGColor:[[F

    return-object v0
.end method

.method public getHomeGradientInputPosition()[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/black/BackgroundBlackSystem;->homeBGPosition:[F

    return-object v0
.end method

.method public getHomeGridentHeight()F
    .locals 1

    const/high16 v0, 0x45390000    # 2960.0f

    return v0
.end method

.method public getTextureLockId()I
    .locals 1

    const v0, 0x7f02028f

    return v0
.end method
