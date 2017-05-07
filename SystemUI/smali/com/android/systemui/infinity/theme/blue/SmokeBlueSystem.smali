.class public Lcom/android/systemui/infinity/theme/blue/SmokeBlueSystem;
.super Lcom/android/systemui/infinity/smoke/SmokeSystem;
.source "SmokeBlueSystem.java"


# instance fields
.field private final imageHeight:F

.field private inputColor:[[[F

.field private inputPosition:[[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x6

    const/4 v4, 0x3

    invoke-direct {p0, p1}, Lcom/android/systemui/infinity/smoke/SmokeSystem;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x45390000    # 2960.0f

    iput v0, p0, Lcom/android/systemui/infinity/theme/blue/SmokeBlueSystem;->imageHeight:F

    new-array v0, v4, [[F

    new-array v1, v5, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v6

    new-array v1, v5, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v7

    new-array v1, v5, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v8

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/blue/SmokeBlueSystem;->inputPosition:[[F

    new-array v0, v4, [[[F

    new-array v1, v5, [[F

    new-array v2, v4, [F

    fill-array-data v2, :array_3

    aput-object v2, v1, v6

    new-array v2, v4, [F

    fill-array-data v2, :array_4

    aput-object v2, v1, v7

    new-array v2, v4, [F

    fill-array-data v2, :array_5

    aput-object v2, v1, v8

    new-array v2, v4, [F

    fill-array-data v2, :array_6

    aput-object v2, v1, v4

    new-array v2, v4, [F

    fill-array-data v2, :array_7

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-array v2, v4, [F

    fill-array-data v2, :array_8

    const/4 v3, 0x5

    aput-object v2, v1, v3

    aput-object v1, v0, v6

    new-array v1, v5, [[F

    new-array v2, v4, [F

    fill-array-data v2, :array_9

    aput-object v2, v1, v6

    new-array v2, v4, [F

    fill-array-data v2, :array_a

    aput-object v2, v1, v7

    new-array v2, v4, [F

    fill-array-data v2, :array_b

    aput-object v2, v1, v8

    new-array v2, v4, [F

    fill-array-data v2, :array_c

    aput-object v2, v1, v4

    new-array v2, v4, [F

    fill-array-data v2, :array_d

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-array v2, v4, [F

    fill-array-data v2, :array_e

    const/4 v3, 0x5

    aput-object v2, v1, v3

    aput-object v1, v0, v7

    new-array v1, v5, [[F

    new-array v2, v4, [F

    fill-array-data v2, :array_f

    aput-object v2, v1, v6

    new-array v2, v4, [F

    fill-array-data v2, :array_10

    aput-object v2, v1, v7

    new-array v2, v4, [F

    fill-array-data v2, :array_11

    aput-object v2, v1, v8

    new-array v2, v4, [F

    fill-array-data v2, :array_12

    aput-object v2, v1, v4

    new-array v2, v4, [F

    fill-array-data v2, :array_13

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-array v2, v4, [F

    fill-array-data v2, :array_14

    const/4 v3, 0x5

    aput-object v2, v1, v3

    aput-object v1, v0, v8

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/blue/SmokeBlueSystem;->inputColor:[[[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x43de0000    # 444.0f
        0x44818000    # 1036.0f
        0x44a68000    # 1332.0f
        0x44f28000    # 1940.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x44390000    # 740.0f
        0x44a68000    # 1332.0f
        0x44cb8000    # 1628.0f
        0x450ac000    # 2220.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x44818000    # 1036.0f
        0x44cb8000    # 1628.0f
        0x44f08000    # 1924.0f
        0x451d4000    # 2516.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x41800000    # 16.0f
        0x420c0000    # 35.0f
        0x42860000    # 67.0f
    .end array-data

    :array_6
    .array-data 4
        0x41800000    # 16.0f
        0x420c0000    # 35.0f
        0x42860000    # 67.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x41800000    # 16.0f
        0x420c0000    # 35.0f
        0x42860000    # 67.0f
    .end array-data

    :array_c
    .array-data 4
        0x41800000    # 16.0f
        0x420c0000    # 35.0f
        0x42860000    # 67.0f
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_11
    .array-data 4
        0x41800000    # 16.0f
        0x420c0000    # 35.0f
        0x42860000    # 67.0f
    .end array-data

    :array_12
    .array-data 4
        0x41800000    # 16.0f
        0x420c0000    # 35.0f
        0x42860000    # 67.0f
    .end array-data

    :array_13
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_14
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method protected getInputColor()[[[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/blue/SmokeBlueSystem;->inputColor:[[[F

    return-object v0
.end method

.method protected getInputHeight()F
    .locals 1

    const/high16 v0, 0x45390000    # 2960.0f

    return v0
.end method

.method protected getInputPosition()[[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/blue/SmokeBlueSystem;->inputPosition:[[F

    return-object v0
.end method
