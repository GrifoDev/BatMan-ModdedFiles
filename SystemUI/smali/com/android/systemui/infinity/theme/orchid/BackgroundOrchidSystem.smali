.class public Lcom/android/systemui/infinity/theme/orchid/BackgroundOrchidSystem;
.super Lcom/android/systemui/infinity/background/BackgroundSystem;
.source "BackgroundOrchidSystem.java"


# instance fields
.field private homeBGColor:[[F

.field private homeBGPosition:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/16 v1, 0xa

    const/4 v3, 0x3

    invoke-direct {p0, p1}, Lcom/android/systemui/infinity/background/BackgroundSystem;-><init>(Landroid/content/Context;)V

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/BackgroundOrchidSystem;->homeBGPosition:[F

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

    new-array v1, v3, [F

    fill-array-data v1, :array_7

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_8

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_9

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_a

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/BackgroundOrchidSystem;->homeBGColor:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x44568000    # 858.0f
        0x44aa4000    # 1362.0f
        0x44cf4000    # 1658.0f
        0x44f08000    # 1924.0f
        0x4508e000    # 2190.0f
        0x4515e000    # 2398.0f
        0x451f2000    # 2546.0f
        0x452a3000    # 2723.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_1
    .array-data 4
        0x41100000    # 9.0f
        0x40c00000    # 6.0f
        0x41900000    # 18.0f
    .end array-data

    :array_2
    .array-data 4
        0x424c0000    # 51.0f
        0x41d00000    # 26.0f
        0x42940000    # 74.0f
    .end array-data

    :array_3
    .array-data 4
        0x42d80000    # 108.0f
        0x42900000    # 72.0f
        0x42e20000    # 113.0f
    .end array-data

    :array_4
    .array-data 4
        0x430d0000    # 141.0f
        0x42cc0000    # 102.0f
        0x42fe0000    # 127.0f
    .end array-data

    :array_5
    .array-data 4
        0x431b0000    # 155.0f
        0x42e60000    # 115.0f
        0x42fe0000    # 127.0f
    .end array-data

    :array_6
    .array-data 4
        0x431a0000    # 154.0f
        0x42ea0000    # 117.0f
        0x42f80000    # 124.0f
    .end array-data

    :array_7
    .array-data 4
        0x430f0000    # 143.0f
        0x42e40000    # 114.0f
        0x42e80000    # 116.0f
    .end array-data

    :array_8
    .array-data 4
        0x43040000    # 132.0f
        0x42d20000    # 105.0f
        0x42d60000    # 107.0f
    .end array-data

    :array_9
    .array-data 4
        0x42de0000    # 111.0f
        0x42b60000    # 91.0f
        0x42be0000    # 95.0f
    .end array-data

    :array_a
    .array-data 4
        0x429a0000    # 77.0f
        0x42820000    # 65.0f
        0x42900000    # 72.0f
    .end array-data
.end method


# virtual methods
.method public getHomeGradientInputColor()[[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/BackgroundOrchidSystem;->homeBGColor:[[F

    return-object v0
.end method

.method public getHomeGradientInputPosition()[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/BackgroundOrchidSystem;->homeBGPosition:[F

    return-object v0
.end method

.method public getHomeGridentHeight()F
    .locals 1

    const/high16 v0, 0x45390000    # 2960.0f

    return v0
.end method

.method public getTextureLockId()I
    .locals 1

    const v0, 0x7f02028c

    return v0
.end method
