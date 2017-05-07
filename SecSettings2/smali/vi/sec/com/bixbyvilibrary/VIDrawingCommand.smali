.class public Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;
.super Ljava/lang/Object;
.source "VIDrawingCommand.java"


# instance fields
.field private bottom:F

.field private left:F

.field private mBound:Landroid/graphics/RectF;

.field private mType:I

.field private right:F

.field private startAngle:F

.field private sweepAngle:F

.field private top:F

.field private x1:F

.field private x2:F

.field private x3:F

.field private y1:F

.field private y2:F

.field private y3:F


# direct methods
.method public constructor <init>(IFF)V
    .locals 3

    const v2, 0x47c34f80    # 99999.0f

    const v1, -0x383cb080    # -99999.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->mBound:Landroid/graphics/RectF;

    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->mType:I

    iput p2, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->x1:F

    iput p3, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->y1:F

    invoke-direct {p0, p2, p3}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->updateBound(FF)V

    return-void
.end method

.method public constructor <init>(IFFFFFF)V
    .locals 3

    const v2, 0x47c34f80    # 99999.0f

    const v1, -0x383cb080    # -99999.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->mBound:Landroid/graphics/RectF;

    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->mType:I

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_0

    iput p2, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->x1:F

    iput p4, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->x2:F

    iput p6, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->x3:F

    iput p3, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->y1:F

    iput p5, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->y2:F

    iput p7, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->y3:F

    invoke-direct {p0, p2, p3}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->updateBound(FF)V

    invoke-direct {p0, p4, p5}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->updateBound(FF)V

    invoke-direct {p0, p6, p7}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->updateBound(FF)V

    return-void

    :cond_0
    iput p2, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->left:F

    iput p3, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->top:F

    iput p4, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->right:F

    iput p5, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->bottom:F

    iput p6, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->startAngle:F

    iput p7, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->sweepAngle:F

    return-void
.end method

.method private updateBound(FF)V
    .locals 1

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->mBound:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->left:F

    :cond_0
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_1

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->mBound:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->right:F

    :cond_1
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, p2

    if-lez v0, :cond_2

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->mBound:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->top:F

    :cond_2
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, p2

    if-gez v0, :cond_3

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->mBound:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->bottom:F

    :cond_3
    return-void
.end method


# virtual methods
.method getBottom()F
    .locals 1

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->bottom:F

    return v0
.end method

.method public getBound()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->mBound:Landroid/graphics/RectF;

    return-object v0
.end method

.method getLeft()F
    .locals 1

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->left:F

    return v0
.end method

.method getRight()F
    .locals 1

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->right:F

    return v0
.end method

.method getStartAngle()F
    .locals 1

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->startAngle:F

    return v0
.end method

.method getSweepAngle()F
    .locals 1

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->sweepAngle:F

    return v0
.end method

.method getTop()F
    .locals 1

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->top:F

    return v0
.end method

.method getType()I
    .locals 1

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->mType:I

    return v0
.end method

.method getX1()F
    .locals 1

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->x1:F

    return v0
.end method

.method getX2()F
    .locals 1

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->x2:F

    return v0
.end method

.method getX3()F
    .locals 1

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->x3:F

    return v0
.end method

.method getY1()F
    .locals 1

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->y1:F

    return v0
.end method

.method getY2()F
    .locals 1

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->y2:F

    return v0
.end method

.method getY3()F
    .locals 1

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->y3:F

    return v0
.end method
