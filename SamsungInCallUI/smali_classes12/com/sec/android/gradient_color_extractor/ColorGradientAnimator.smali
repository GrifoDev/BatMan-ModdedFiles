.class public Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator;
.super Lcom/sec/android/gradient_color_extractor/GradientMaker;
.source "ColorGradientAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;
    }
.end annotation


# static fields
.field public static final TYPE_BIG:I = 0x0

.field public static final TYPE_NUM:I = 0x2

.field public static final TYPE_SMALL:I = 0x1

.field public static mGradientColorSet:[[[F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v0, 0x7

    new-array v0, v0, [[[F

    new-array v1, v7, [[F

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    aput-object v2, v1, v5

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [[F

    new-array v2, v4, [F

    fill-array-data v2, :array_2

    aput-object v2, v1, v5

    new-array v2, v4, [F

    fill-array-data v2, :array_3

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [[F

    new-array v2, v4, [F

    fill-array-data v2, :array_4

    aput-object v2, v1, v5

    new-array v2, v4, [F

    fill-array-data v2, :array_5

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v7, [[F

    new-array v2, v4, [F

    fill-array-data v2, :array_6

    aput-object v2, v1, v5

    new-array v2, v4, [F

    fill-array-data v2, :array_7

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-array v2, v7, [[F

    new-array v3, v4, [F

    fill-array-data v3, :array_8

    aput-object v3, v2, v5

    new-array v3, v4, [F

    fill-array-data v3, :array_9

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v7, [[F

    new-array v3, v4, [F

    fill-array-data v3, :array_a

    aput-object v3, v2, v5

    new-array v3, v4, [F

    fill-array-data v3, :array_b

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [[F

    new-array v3, v4, [F

    fill-array-data v3, :array_c

    aput-object v3, v2, v5

    new-array v3, v4, [F

    fill-array-data v3, :array_d

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator;->mGradientColorSet:[[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x43580000    # 216.0f
        0x3ef5c28f    # 0.48f
        0x3f400000    # 0.75f
    .end array-data

    :array_1
    .array-data 4
        0x432c0000    # 172.0f
        0x3f6147ae    # 0.88f
        0x3f5c28f6    # 0.86f
    .end array-data

    :array_2
    .array-data 4
        0x430b0000    # 139.0f
        0x3ed1eb85    # 0.41f
        0x3f266666    # 0.65f
    .end array-data

    :array_3
    .array-data 4
        0x43300000    # 176.0f
        0x3f800000    # 1.0f
        0x3f3ae148    # 0.73f
    .end array-data

    :array_4
    .array-data 4
        0x40800000    # 4.0f
        0x3ee66666    # 0.45f
        0x3f3d70a4    # 0.74f
    .end array-data

    :array_5
    .array-data 4
        0x41d80000    # 27.0f
        0x3e9eb852    # 0.31f
        0x3f400000    # 0.75f
    .end array-data

    :array_6
    .array-data 4
        0x43760000    # 246.0f
        0x3f1eb852    # 0.62f
        0x3f2147ae    # 0.63f
    .end array-data

    :array_7
    .array-data 4
        0x438e8000    # 285.0f
        0x3efae148    # 0.49f
        0x3f1eb852    # 0.62f
    .end array-data

    :array_8
    .array-data 4
        0x434d0000    # 205.0f
        0x3ee147ae    # 0.44f
        0x3f35c28f    # 0.71f
    .end array-data

    :array_9
    .array-data 4
        0x43670000    # 231.0f
        0x3f3d70a4    # 0.74f
        0x3f570a3d    # 0.84f
    .end array-data

    :array_a
    .array-data 4
        0x42000000    # 32.0f
        0x3f0f5c29    # 0.56f
        0x3f333333    # 0.7f
    .end array-data

    :array_b
    .array-data 4
        0x43880000    # 272.0f
        0x3e051eb8    # 0.13f
        0x3f23d70a    # 0.64f
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x0
        0x3ee147ae    # 0.44f
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x0
        0x3f2e147b    # 0.68f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gradient_color_extractor/GradientMaker;-><init>()V

    return-void
.end method

.method public static getAnimationColorGradientView(Landroid/content/Context;)Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;
    .locals 1

    new-instance v0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;

    invoke-direct {v0, p0}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
