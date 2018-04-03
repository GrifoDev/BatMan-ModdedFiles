.class public Lcom/android/systemui/infinity/theme/pink/BackgroundPinkSystem;
.super Lcom/android/systemui/infinity/background/BackgroundSystem;
.source "BackgroundPinkSystem.java"


# instance fields
.field private homeBGColor:[[F

.field private homeBGPosition:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x7

    const/4 v3, 0x3

    invoke-direct {p0, p1}, Lcom/android/systemui/infinity/background/BackgroundSystem;-><init>(Landroid/content/Context;)V

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/pink/BackgroundPinkSystem;->homeBGPosition:[F

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

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/pink/BackgroundPinkSystem;->homeBGColor:[[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x44318000    # 710.0f
        0x44ade000    # 1391.0f
        0x44f08000    # 1924.0f
        0x45018000    # 2072.0f
        0x450ac000    # 2220.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_1
    .array-data 4
        0x41400000    # 12.0f
        0x41700000    # 15.0f
        0x41900000    # 18.0f
    .end array-data

    :array_2
    .array-data 4
        0x425c0000    # 55.0f
        0x42700000    # 60.0f
        0x42b00000    # 88.0f
    .end array-data

    :array_3
    .array-data 4
        0x430a0000    # 138.0f
        0x42c40000    # 98.0f
        0x42ec0000    # 118.0f
    .end array-data

    :array_4
    .array-data 4
        0x432c0000    # 172.0f
        0x43060000    # 134.0f
        0x42fa0000    # 125.0f
    .end array-data

    :array_5
    .array-data 4
        0x432c0000    # 172.0f
        0x43060000    # 134.0f
        0x42fa0000    # 125.0f
    .end array-data

    :array_6
    .array-data 4
        0x43290000    # 169.0f
        0x43030000    # 131.0f
        0x42f60000    # 123.0f
    .end array-data

    :array_7
    .array-data 4
        0x43150000    # 149.0f
        0x42e20000    # 113.0f
        0x42da0000    # 109.0f
    .end array-data
.end method


# virtual methods
.method public getHomeGradientInputColor()[[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/pink/BackgroundPinkSystem;->homeBGColor:[[F

    return-object v0
.end method

.method public getHomeGradientInputPosition()[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/pink/BackgroundPinkSystem;->homeBGPosition:[F

    return-object v0
.end method

.method public getHomeGridentHeight()F
    .locals 1

    const/high16 v0, 0x45390000    # 2960.0f

    return v0
.end method

.method public getTextureLockId()I
    .locals 1

    const v0, 0x7f080370

    return v0
.end method
