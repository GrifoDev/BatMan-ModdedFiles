.class public Lcom/android/systemui/infinity/theme/silver/BackgroundSilverSystem;
.super Lcom/android/systemui/infinity/background/BackgroundSystem;
.source "BackgroundSilverSystem.java"


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

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/silver/BackgroundSilverSystem;->homeBGPosition:[F

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

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/silver/BackgroundSilverSystem;->homeBGColor:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x442a4000    # 681.0f
        0x44568000    # 858.0f
        0x44ade000    # 1391.0f
        0x44e1c000    # 1806.0f
        0x44fba000    # 2013.0f
        0x45053000    # 2131.0f
        0x450e7000    # 2279.0f
        0x451d4000    # 2516.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_1
    .array-data 4
        0x42a40000    # 82.0f
        0x42ba0000    # 93.0f
        0x42ee0000    # 119.0f
    .end array-data

    :array_2
    .array-data 4
        0x42800000    # 64.0f
        0x42820000    # 65.0f
        0x42b80000    # 92.0f
    .end array-data

    :array_3
    .array-data 4
        0x42800000    # 64.0f
        0x42800000    # 64.0f
        0x42b60000    # 91.0f
    .end array-data

    :array_4
    .array-data 4
        0x42b20000    # 89.0f
        0x429c0000    # 78.0f
        0x42ce0000    # 103.0f
    .end array-data

    :array_5
    .array-data 4
        0x42e80000    # 116.0f
        0x42ba0000    # 93.0f
        0x42ce0000    # 103.0f
    .end array-data

    :array_6
    .array-data 4
        0x42f40000    # 122.0f
        0x42ba0000    # 93.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_7
    .array-data 4
        0x42ec0000    # 118.0f
        0x42b20000    # 89.0f
        0x42c00000    # 96.0f
    .end array-data

    :array_8
    .array-data 4
        0x42d80000    # 108.0f
        0x42a40000    # 82.0f
        0x42ac0000    # 86.0f
    .end array-data

    :array_9
    .array-data 4
        0x42a00000    # 80.0f
        0x426c0000    # 59.0f
        0x42800000    # 64.0f
    .end array-data

    :array_a
    .array-data 4
        0x41700000    # 15.0f
        0x41100000    # 9.0f
        0x41900000    # 18.0f
    .end array-data
.end method


# virtual methods
.method public getHomeGradientInputColor()[[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/silver/BackgroundSilverSystem;->homeBGColor:[[F

    return-object v0
.end method

.method public getHomeGradientInputPosition()[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/silver/BackgroundSilverSystem;->homeBGPosition:[F

    return-object v0
.end method

.method public getHomeGridentHeight()F
    .locals 1

    const/high16 v0, 0x45390000    # 2960.0f

    return v0
.end method

.method public getTextureLockId()I
    .locals 1

    const v0, 0x7f020294

    return v0
.end method
