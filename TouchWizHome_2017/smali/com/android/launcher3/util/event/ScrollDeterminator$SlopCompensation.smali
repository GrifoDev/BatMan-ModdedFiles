.class Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;
.super Ljava/lang/Object;
.source "ScrollDeterminator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/event/ScrollDeterminator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlopCompensation"
.end annotation


# static fields
.field static final WEIGHT_OFFSET:F = 0.2f

.field static final WEIGHT_SLOPE:F = 0.04f


# instance fields
.field mSlopCompensationX:F


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;->mSlopCompensationX:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/util/event/ScrollDeterminator$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;-><init>()V

    return-void
.end method


# virtual methods
.method getDeltaXwithCompensation(I)I
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    int-to-float v4, p1

    iget v5, p0, Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;->mSlopCompensationX:F

    mul-float/2addr v4, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    const v4, 0x3d23d70a    # 0.04f

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const v5, 0x3e4ccccd    # 0.2f

    sub-float/2addr v4, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move v1, p1

    if-eqz v2, :cond_2

    cmpg-float v4, v3, v7

    if-gez v4, :cond_1

    iget v4, p0, Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;->mSlopCompensationX:F

    mul-float v0, v3, v4

    :goto_1
    iget v4, p0, Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;->mSlopCompensationX:F

    sub-float/2addr v4, v0

    iput v4, p0, Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;->mSlopCompensationX:F

    float-to-int v4, v0

    add-int v1, p1, v4

    :goto_2
    return v1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;->mSlopCompensationX:F

    goto :goto_1

    :cond_2
    iput v6, p0, Lcom/android/launcher3/util/event/ScrollDeterminator$SlopCompensation;->mSlopCompensationX:F

    goto :goto_2
.end method
