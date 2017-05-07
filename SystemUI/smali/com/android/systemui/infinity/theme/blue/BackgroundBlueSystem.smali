.class public Lcom/android/systemui/infinity/theme/blue/BackgroundBlueSystem;
.super Lcom/android/systemui/infinity/background/BackgroundSystem;
.source "BackgroundBlueSystem.java"


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

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/blue/BackgroundBlueSystem;->homeBGPosition:[F

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

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/blue/BackgroundBlueSystem;->homeBGColor:[[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x44390000    # 740.0f
        0x44b90000    # 1480.0f
        0x450ac000    # 2220.0f
        0x45268000    # 2664.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_1
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x41800000    # 16.0f
    .end array-data

    :array_2
    .array-data 4
        0x40000000    # 2.0f
        0x41c00000    # 24.0f
        0x42840000    # 66.0f
    .end array-data

    :array_3
    .array-data 4
        0x41b00000    # 22.0f
        0x42920000    # 73.0f
        0x430a0000    # 138.0f
    .end array-data

    :array_4
    .array-data 4
        0x428e0000    # 71.0f
        0x42d60000    # 107.0f
        0x431d0000    # 157.0f
    .end array-data

    :array_5
    .array-data 4
        0x42a40000    # 82.0f
        0x42c80000    # 100.0f
        0x43050000    # 133.0f
    .end array-data

    :array_6
    .array-data 4
        0x42500000    # 52.0f
        0x428e0000    # 71.0f
        0x42d00000    # 104.0f
    .end array-data
.end method


# virtual methods
.method public getHomeGradientInputColor()[[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/blue/BackgroundBlueSystem;->homeBGColor:[[F

    return-object v0
.end method

.method public getHomeGradientInputPosition()[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/blue/BackgroundBlueSystem;->homeBGPosition:[F

    return-object v0
.end method

.method public getHomeGridentHeight()F
    .locals 1

    const/high16 v0, 0x45390000    # 2960.0f

    return v0
.end method

.method public getTextureLockId()I
    .locals 1

    const v0, 0x7f02028a

    return v0
.end method
