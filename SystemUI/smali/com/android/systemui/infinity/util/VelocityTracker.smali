.class public Lcom/android/systemui/infinity/util/VelocityTracker;
.super Ljava/lang/Object;
.source "VelocityTracker.java"


# static fields
.field static instance:Lcom/android/systemui/infinity/util/VelocityTracker;


# instance fields
.field beforeXArray:[F

.field beforeYArray:[F

.field public checkCount:I

.field timeArray:[J

.field public totalMoveDistance:I

.field public totalMoveDistanceX:I

.field public totalMoveDistanceY:I

.field trackCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->trackCount:I

    iget v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->trackCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    iget v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->trackCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    iget v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->trackCount:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->timeArray:[J

    iput v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->totalMoveDistance:I

    iput v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->totalMoveDistanceX:I

    iput v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->totalMoveDistanceY:I

    iput v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->checkCount:I

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/infinity/util/VelocityTracker;
    .locals 1

    sget-object v0, Lcom/android/systemui/infinity/util/VelocityTracker;->instance:Lcom/android/systemui/infinity/util/VelocityTracker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/infinity/util/VelocityTracker;

    invoke-direct {v0}, Lcom/android/systemui/infinity/util/VelocityTracker;-><init>()V

    sput-object v0, Lcom/android/systemui/infinity/util/VelocityTracker;->instance:Lcom/android/systemui/infinity/util/VelocityTracker;

    :cond_0
    sget-object v0, Lcom/android/systemui/infinity/util/VelocityTracker;->instance:Lcom/android/systemui/infinity/util/VelocityTracker;

    return-object v0
.end method


# virtual methods
.method public addHistory(FF)V
    .locals 12

    iget v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->checkCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->checkCount:I

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->trackCount:I

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->timeArray:[J

    iget-object v4, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->timeArray:[J

    add-int/lit8 v5, v0, -0x1

    aget-wide v4, v4, v5

    aput-wide v4, v1, v0

    iget-object v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    iget-object v4, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    aput v4, v1, v0

    iget-object v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    iget-object v4, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    aput v4, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->timeArray:[J

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    iget-object v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    const/4 v4, 0x0

    aput p1, v1, v4

    iget-object v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    const/4 v4, 0x0

    aput p2, v1, v4

    iget v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->totalMoveDistance:I

    int-to-double v4, v1

    iget-object v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    const/4 v6, 0x0

    aget v1, v1, v6

    iget-object v6, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-float/2addr v1, v6

    float-to-double v6, v1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget-object v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    const/4 v8, 0x0

    aget v1, v1, v8

    iget-object v8, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-float/2addr v1, v8

    float-to-double v8, v1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v1, v4

    iput v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->totalMoveDistance:I

    iget v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->totalMoveDistanceX:I

    int-to-float v1, v1

    iget-object v4, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->totalMoveDistanceX:I

    iget v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->totalMoveDistanceY:I

    int-to-float v1, v1

    iget-object v4, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->totalMoveDistanceY:I

    return-void
.end method

.method public getLastVelocityX(I)F
    .locals 8

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->timeArray:[J

    add-int/lit8 v7, p1, -0x1

    aget-wide v0, v6, v7

    const/4 v2, 0x1

    :goto_0
    if-ge v2, p1, :cond_0

    iget-object v6, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    add-int/lit8 v7, v2, -0x1

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    aget v7, v7, v2

    sub-float/2addr v6, v7

    add-float/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sub-long v6, v4, v0

    long-to-float v6, v6

    div-float v6, v3, v6

    return v6
.end method

.method public resetValue(FF)V
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->trackCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    aput p1, v1, v0

    iget-object v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    aput p2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->timeArray:[J

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v4, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->checkCount:I

    iput v4, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->totalMoveDistance:I

    iput v4, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->totalMoveDistanceX:I

    iput v4, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->totalMoveDistanceY:I

    return-void
.end method
