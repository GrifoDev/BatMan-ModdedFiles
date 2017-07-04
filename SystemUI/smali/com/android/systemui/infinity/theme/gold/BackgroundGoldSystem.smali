.class public Lcom/android/systemui/infinity/theme/gold/BackgroundGoldSystem;
.super Lcom/android/systemui/infinity/background/BackgroundSystem;
.source "BackgroundGoldSystem.java"


# instance fields
.field private homeBGColor:[[F

.field private homeBGPosition:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x6

    const/4 v3, 0x3

    invoke-direct {p0, p1}, Lcom/android/systemui/infinity/background/BackgroundSystem;-><init>(Landroid/content/Context;)V

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/gold/BackgroundGoldSystem;->homeBGPosition:[F

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

    new-array v1, v3, [F

    fill-array-data v1, :array_6

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/gold/BackgroundGoldSystem;->homeBGColor:[[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x43de0000    # 444.0f
        0x44854000    # 1066.0f
        0x45036000    # 2102.0f
        0x450e7000    # 2279.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_1
    .array-data 4
        0x41200000    # 10.0f
        0x41100000    # 9.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_2
    .array-data 4
        0x42640000    # 57.0f
        0x42040000    # 33.0f
        0x42740000    # 61.0f
    .end array-data

    :array_3
    .array-data 4
        0x42b60000    # 91.0f
        0x42600000    # 56.0f
        0x42880000    # 68.0f
    .end array-data

    :array_4
    .array-data 4
        0x432d0000    # 173.0f
        0x43060000    # 134.0f
        0x42960000    # 75.0f
    .end array-data

    :array_5
    .array-data 4
        0x432d0000    # 173.0f
        0x43060000    # 134.0f
        0x42960000    # 75.0f
    .end array-data

    :array_6
    .array-data 4
        0x430d0000    # 141.0f
        0x42ce0000    # 103.0f
        0x42580000    # 54.0f
    .end array-data
.end method


# virtual methods
.method public getHomeGradientInputColor()[[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/gold/BackgroundGoldSystem;->homeBGColor:[[F

    return-object v0
.end method

.method public getHomeGradientInputPosition()[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/gold/BackgroundGoldSystem;->homeBGPosition:[F

    return-object v0
.end method

.method public getHomeGridentHeight()F
    .locals 1

    const/high16 v0, 0x45390000    # 2960.0f

    return v0
.end method

.method public getTextureLockId()I
    .locals 1

    const v0, 0x7f02028d

    return v0
.end method
