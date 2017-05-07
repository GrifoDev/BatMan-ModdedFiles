.class Lcom/android/launcher3/util/event/ScrollHelper;
.super Ljava/lang/Object;
.source "ScrollDetector.java"


# static fields
.field static final X:I = 0x0

.field static final Y:I = 0x1

.field private static sGradientCount:F

.field private static sLastGradient:F

.field private static sSumOfAccelaration:F


# instance fields
.field private mDistanceFromPress:[F

.field mPressedTouch:[F

.field mTouch:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/util/event/ScrollHelper;->sLastGradient:F

    sput v0, Lcom/android/launcher3/util/event/ScrollHelper;->sSumOfAccelaration:F

    sput v0, Lcom/android/launcher3/util/event/ScrollHelper;->sGradientCount:F

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/launcher3/util/event/ScrollHelper;->mPressedTouch:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/launcher3/util/event/ScrollHelper;->mTouch:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/launcher3/util/event/ScrollHelper;->mDistanceFromPress:[F

    return-void
.end method

.method private getDistanceFromPress()[F
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/util/event/ScrollHelper;->mDistanceFromPress:[F

    iget-object v1, p0, Lcom/android/launcher3/util/event/ScrollHelper;->mTouch:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/launcher3/util/event/ScrollHelper;->mPressedTouch:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/launcher3/util/event/ScrollHelper;->mDistanceFromPress:[F

    iget-object v1, p0, Lcom/android/launcher3/util/event/ScrollHelper;->mTouch:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/launcher3/util/event/ScrollHelper;->mPressedTouch:[F

    aget v2, v2, v4

    sub-float/2addr v1, v2

    aput v1, v0, v4

    iget-object v0, p0, Lcom/android/launcher3/util/event/ScrollHelper;->mDistanceFromPress:[F

    return-object v0
.end method


# virtual methods
.method getAverageAccelaration()F
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const v2, 0x3fcccccd    # 1.6f

    const v3, 0x3f4ccccd    # 0.8f

    sget v5, Lcom/android/launcher3/util/event/ScrollHelper;->sGradientCount:F

    cmpl-float v5, v5, v7

    if-nez v5, :cond_0

    sget v1, Lcom/android/launcher3/util/event/ScrollHelper;->sSumOfAccelaration:F

    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/util/event/ScrollHelper;->getDistanceFromPress()[F

    move-result-object v0

    aget v5, v0, v8

    cmpl-float v5, v5, v7

    if-nez v5, :cond_1

    aget v4, v0, v9

    :goto_1
    mul-float v5, v3, v4

    mul-float v6, v2, v1

    add-float/2addr v5, v6

    return v5

    :cond_0
    sget v5, Lcom/android/launcher3/util/event/ScrollHelper;->sSumOfAccelaration:F

    sget v6, Lcom/android/launcher3/util/event/ScrollHelper;->sGradientCount:F

    div-float v1, v5, v6

    goto :goto_0

    :cond_1
    aget v5, v0, v9

    aget v6, v0, v8

    div-float v4, v5, v6

    goto :goto_1
.end method

.method getCount()F
    .locals 1

    sget v0, Lcom/android/launcher3/util/event/ScrollHelper;->sGradientCount:F

    return v0
.end method

.method getXDistanceFromPress()F
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/util/event/ScrollHelper;->getDistanceFromPress()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method getYDistanceFromPress()F
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/util/event/ScrollHelper;->getDistanceFromPress()[F

    move-result-object v0

    const/4 v1, 0x1

    aget v1, v0, v1

    return v1
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/util/event/ScrollHelper;->sSumOfAccelaration:F

    sput v0, Lcom/android/launcher3/util/event/ScrollHelper;->sGradientCount:F

    sput v0, Lcom/android/launcher3/util/event/ScrollHelper;->sLastGradient:F

    return-void
.end method

.method setMove(FF)V
    .locals 3

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    move v0, p2

    :goto_0
    sget v1, Lcom/android/launcher3/util/event/ScrollHelper;->sSumOfAccelaration:F

    sget v2, Lcom/android/launcher3/util/event/ScrollHelper;->sLastGradient:F

    sub-float v2, v0, v2

    add-float/2addr v1, v2

    sput v1, Lcom/android/launcher3/util/event/ScrollHelper;->sSumOfAccelaration:F

    sget v1, Lcom/android/launcher3/util/event/ScrollHelper;->sGradientCount:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    sput v1, Lcom/android/launcher3/util/event/ScrollHelper;->sGradientCount:F

    sput v0, Lcom/android/launcher3/util/event/ScrollHelper;->sLastGradient:F

    return-void

    :cond_0
    div-float v0, p2, p1

    goto :goto_0
.end method

.method setTouch([FFF)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 v0, 0x1

    aput p3, p1, v0

    :cond_0
    return-void
.end method
