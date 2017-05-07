.class public Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;
.super Ljava/lang/Object;
.source "VIBixbyParticle.java"


# static fields
.field private static mInitSize:F

.field private static mViParticleDistance:Lvi/sec/com/bixbyvilibrary/VIParticleDistance;


# instance fields
.field private mAnimForward:Z

.field private mCurrentTimeCursor:F

.field private mCurrentTotalPercent:F

.field private mDisappearDistance:F

.field private mDisappearEnd:F

.field private mDisappearInterpolation:F

.field private mDisappearProgress:F

.field private mDisappearScale:F

.field private mDisappearStart:F

.field private mDistanceFromCenterPivot:F

.field private mDuration:F

.field private mDurationStartOffset:J

.field private mIsStart:Z

.field private mMatrixParticle:Landroid/graphics/Matrix;

.field private mMinDisappearDistance:F

.field private mMinRightFirstShapeScaled:F

.field private mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

.field private mMovingDistance:F

.field private mOptDisappearDivideValue:F

.field private mOptDurationDivideValue:F

.field private mOriginalScale:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPivotXmainIcon:F

.field private mPivotYmainIcon:F

.field private mPrimitive:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

.field private mRadiousMainIcon:F

.field private mRotationByDegree:F

.field private mScale:F

.field private mScalePrevious:F

.field private mSineInOut33:Lvi/sec/com/bixbyvilibrary/SineInOut33;

.field private mSize:F

.field private mStartTime:J

.field private mTotalPercent:F

.field private mTx:F

.field private mTy:F

.field private mValidMorpher:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mInitSize:F

    new-instance v0, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;

    invoke-direct {v0}, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;-><init>()V

    sput-object v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mViParticleDistance:Lvi/sec/com/bixbyvilibrary/VIParticleDistance;

    return-void
.end method

.method public constructor <init>(Lvi/sec/com/bixbyvilibrary/SineInOut33;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mValidMorpher:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMatrixParticle:Landroid/graphics/Matrix;

    iput-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    iput-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPrimitive:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mIsStart:Z

    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mValidMorpher:Z

    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mAnimForward:Z

    iput v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTimeCursor:F

    iput v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTx:F

    iput v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTy:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScalePrevious:F

    iput v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mRotationByDegree:F

    iput v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDistanceFromCenterPivot:F

    iput-object p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mSineInOut33:Lvi/sec/com/bixbyvilibrary/SineInOut33;

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private calculateTotalPercent()V
    .locals 3

    const/high16 v2, 0x42c80000    # 100.0f

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearDistance:F

    sget-object v1, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mViParticleDistance:Lvi/sec/com/bixbyvilibrary/VIParticleDistance;

    invoke-virtual {v1}, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->getTypeC()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMovingDistance:F

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMovingDistance:F

    sget-object v1, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mViParticleDistance:Lvi/sec/com/bixbyvilibrary/VIParticleDistance;

    invoke-virtual {v1}, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->getTypeB()F

    move-result v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    add-float/2addr v0, v2

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTotalPercent:F

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTotalPercent:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearStart:F

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTotalPercent:F

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearEnd:F

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearEnd:F

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearStart:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mOptDisappearDivideValue:F

    return-void
.end method

.method private getDistanceInformation(Lvi/sec/com/bixbyvilibrary/VIParticleDistance;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->makeInterpolatedCommand(FZ)Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    move-result-object v9

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->makeInterpolatedPrimitive(Landroid/graphics/Path;Lvi/sec/com/bixbyvilibrary/VIPrimitive;)V

    move-object/from16 v0, p0

    iget v13, v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    invoke-virtual {v9}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->getBound()Landroid/graphics/RectF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/RectF;->right:F

    mul-float v11, v13, v14

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget v13, v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    move-object/from16 v0, p0

    iget v14, v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v4, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {v4, v1, v13}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    move-object/from16 v0, p0

    iget v13, v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mRadiousMainIcon:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float v5, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->setTypeA(F)V

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    const/high16 v14, 0x42c80000    # 100.0f

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->makeInterpolatedCommand(FZ)Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->makeInterpolatedPrimitive(Landroid/graphics/Path;Lvi/sec/com/bixbyvilibrary/VIPrimitive;)V

    move-object/from16 v0, p0

    iget v13, v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    invoke-virtual {v10}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->getBound()Landroid/graphics/RectF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/RectF;->right:F

    mul-float v12, v13, v14

    move-object/from16 v0, p0

    iget v13, v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    move-object/from16 v0, p0

    iget v14, v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v4, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {v4, v2, v13}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    sub-float v6, v12, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->setTypeB(F)V

    sub-float v13, v12, v11

    move-object/from16 v0, p0

    iget v14, v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mRadiousMainIcon:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    add-float v7, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->setTypeC(F)V

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->makeInterpolatedPrimitive(Landroid/graphics/Path;Lvi/sec/com/bixbyvilibrary/VIPrimitive;)V

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v4, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {v4, v3, v13}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->setDiameterParticleNotScaled(F)V

    return-void
.end method

.method private getPercentToDistance(F)F
    .locals 3

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v2

    if-lez v0, :cond_0

    sub-float v0, p1, v2

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTotalPercent:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMovingDistance:F

    mul-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getPercentToTotalPercent(F)F
    .locals 2

    const/high16 v1, 0x42c80000    # 100.0f

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTotalPercent:F

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTotalPercent:F

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTotalPercent:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTotalPercent:F

    invoke-direct {p0, v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->getPercentToDistance(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->setDistanceFromCenterPivot(F)V

    :cond_0
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTotalPercent:F

    return v0
.end method

.method private makeInterpolatedPrimitive(Landroid/graphics/Path;Lvi/sec/com/bixbyvilibrary/VIPrimitive;)V
    .locals 10

    const/4 v7, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->countOfCommand()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {p2}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->countOfCommand()I

    move-result v0

    if-lt v9, v0, :cond_1

    return-void

    :cond_0
    move v0, v7

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v9}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->getCommand(I)Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;

    move-result-object v8

    if-nez v8, :cond_2

    :goto_2
    :pswitch_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_1
    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX1()F

    move-result v0

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY1()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX1()F

    move-result v1

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY1()F

    move-result v2

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX2()F

    move-result v3

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY2()F

    move-result v4

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX3()F

    move-result v5

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY3()F

    move-result v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_2

    :pswitch_3
    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX1()F

    move-result v1

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY1()F

    move-result v2

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX2()F

    move-result v3

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY2()F

    move-result v4

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX3()F

    move-result v5

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY3()F

    move-result v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    goto :goto_2

    :pswitch_4
    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getLeft()F

    move-result v1

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getTop()F

    move-result v2

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getRight()F

    move-result v3

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getBottom()F

    move-result v4

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getStartAngle()F

    move-result v5

    invoke-virtual {v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getSweepAngle()F

    move-result v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public drawingBixbyMorphingShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;J)Z
    .locals 11

    iget-boolean v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mIsStart:Z

    if-eqz v6, :cond_3

    iget-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mStartTime:J

    sub-long v6, p3, v6

    long-to-float v6, v6

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mOptDurationDivideValue:F

    mul-float v4, v6, v7

    invoke-direct {p0, v4}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->getPercentToTotalPercent(F)F

    move-result v6

    invoke-virtual {p0, v6}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->setFrameProgress(F)V

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTotalPercent:F

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearStart:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTotalPercent:F

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearStart:F

    sub-float/2addr v6, v7

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mOptDisappearDivideValue:F

    mul-float/2addr v6, v7

    iput v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearProgress:F

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearProgress:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearProgress:F

    :cond_0
    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mSineInOut33:Lvi/sec/com/bixbyvilibrary/SineInOut33;

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearProgress:F

    invoke-virtual {v6, v7}, Lvi/sec/com/bixbyvilibrary/SineInOut33;->getInterpolation(F)F

    move-result v6

    iput v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearInterpolation:F

    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearInterpolation:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mOriginalScale:F

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearScale:F

    iget v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearInterpolation:F

    mul-float/2addr v7, v8

    sub-float v1, v6, v7

    invoke-virtual {p0, v1}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->setScale(F)V

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDistanceFromCenterPivot:F

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mOriginalScale:F

    sub-float/2addr v7, v1

    const/high16 v8, 0x41a00000    # 20.0f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDistanceFromCenterPivot:F

    :goto_0
    invoke-virtual {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->updateParticleShape()V

    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMatrixParticle:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTimeCursor:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_7

    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPath:Landroid/graphics/Path;

    iget-object v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPrimitive:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    invoke-direct {p0, v6, v7}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->makeInterpolatedPrimitive(Landroid/graphics/Path;Lvi/sec/com/bixbyvilibrary/VIPrimitive;)V

    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPrimitive:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    invoke-virtual {v6}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->getBound()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iput v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMinRightFirstShapeScaled:F

    :goto_1
    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMatrixParticle:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMatrixParticle:Landroid/graphics/Matrix;

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    iget v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTimeCursor:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScalePrevious:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2

    :cond_1
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6, v3, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScalePrevious:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_8

    iget v6, v0, Landroid/graphics/RectF;->right:F

    neg-float v6, v6

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mRadiousMainIcon:F

    add-float/2addr v6, v7

    iput v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTx:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    neg-float v6, v6

    iput v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTy:F

    :cond_2
    :goto_2
    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTimeCursor:F

    const/high16 v7, 0x42c80000    # 100.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_9

    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMatrixParticle:Landroid/graphics/Matrix;

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTx:F

    iget v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDistanceFromCenterPivot:F

    add-float/2addr v7, v8

    iget v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTy:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_3
    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMatrixParticle:Landroid/graphics/Matrix;

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mRotationByDegree:F

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMatrixParticle:Landroid/graphics/Matrix;

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPivotXmainIcon:F

    iget v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPivotYmainIcon:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPath:Landroid/graphics/Path;

    iget-object v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMatrixParticle:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPath:Landroid/graphics/Path;

    iget-object v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTotalPercent:F

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTotalPercent:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_a

    const/4 v6, 0x0

    return v6

    :cond_3
    iget-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mStartTime:J

    iget-wide v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDurationStartOffset:J

    add-long/2addr v6, v8

    cmp-long v6, p3, v6

    if-ltz v6, :cond_4

    const/4 v6, 0x1

    :goto_4
    if-nez v6, :cond_5

    const/4 v6, 0x1

    return v6

    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    iget-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mStartTime:J

    iget-wide v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDurationStartOffset:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mStartTime:J

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->setFrameProgress(F)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mIsStart:Z

    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPaint:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPath:Landroid/graphics/Path;

    iget-object v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPrimitive:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    invoke-direct {p0, v6, v7}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->makeInterpolatedPrimitive(Landroid/graphics/Path;Lvi/sec/com/bixbyvilibrary/VIPrimitive;)V

    goto/16 :goto_1

    :cond_8
    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMinRightFirstShapeScaled:F

    iget v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    mul-float/2addr v7, v8

    sub-float v2, v6, v7

    iget v6, v0, Landroid/graphics/RectF;->right:F

    neg-float v6, v6

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mRadiousMainIcon:F

    add-float/2addr v6, v7

    add-float/2addr v6, v2

    iput v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTx:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    neg-float v6, v6

    iput v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTy:F

    goto/16 :goto_2

    :cond_9
    iget-object v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMatrixParticle:Landroid/graphics/Matrix;

    iget v7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTx:F

    iget v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mTy:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_3

    :cond_a
    const/4 v6, 0x1

    return v6
.end method

.method public initAnimation(FFFFJF)F
    .locals 5

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mIsStart:Z

    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mRotationByDegree:F

    iput p2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mSize:F

    float-to-long v0, p3

    iput-wide v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDurationStartOffset:J

    iput p4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDuration:F

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDuration:F

    div-float v0, v3, v0

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mOptDurationDivideValue:F

    iput-wide p5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mStartTime:J

    iput p7, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearDistance:F

    sget v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mInitSize:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mViParticleDistance:Lvi/sec/com/bixbyvilibrary/VIParticleDistance;

    invoke-direct {p0, v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->getDistanceInformation(Lvi/sec/com/bixbyvilibrary/VIParticleDistance;)V

    sget-object v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mViParticleDistance:Lvi/sec/com/bixbyvilibrary/VIParticleDistance;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->getDiameterParticleNotScaled()F

    move-result v0

    sput v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mInitSize:F

    :cond_0
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mSize:F

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mInitSize:F

    div-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScalePrevious:F

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mOriginalScale:F

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearScale:F

    sget-object v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mViParticleDistance:Lvi/sec/com/bixbyvilibrary/VIParticleDistance;

    invoke-direct {p0, v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->getDistanceInformation(Lvi/sec/com/bixbyvilibrary/VIParticleDistance;)V

    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->calculateTotalPercent()V

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearStart:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    sget-object v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mViParticleDistance:Lvi/sec/com/bixbyvilibrary/VIParticleDistance;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->getTypeB()F

    move-result v0

    const v1, 0x3eaaaaa9

    mul-float/2addr v0, v1

    sget-object v1, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mViParticleDistance:Lvi/sec/com/bixbyvilibrary/VIParticleDistance;

    invoke-virtual {v1}, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->getTypeC()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMinDisappearDistance:F

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMinDisappearDistance:F

    return v0

    :cond_1
    return v2
.end method

.method public initMorphingShape(FFFLvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;)Z
    .locals 1

    invoke-static {p4}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iput-object p4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPivotXmainIcon:F

    iput p2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPivotYmainIcon:F

    iput p3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mRadiousMainIcon:F

    iget-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mValidMorpher:Z

    return v0
.end method

.method public isValid()Z
    .locals 2

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDisappearStart:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setAnimForward(Z)V
    .locals 1

    iget-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mAnimForward:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mAnimForward:Z

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->exchangeIndexShape()V

    goto :goto_0
.end method

.method public setDistanceFromCenterPivot(F)V
    .locals 0

    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mDistanceFromCenterPivot:F

    return-void
.end method

.method public setFrameProgress(F)V
    .locals 0

    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTimeCursor:F

    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTotalPercent:F

    return-void
.end method

.method public setScale(F)V
    .locals 2

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScalePrevious:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScalePrevious:F

    :goto_0
    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScale:F

    return-void

    :cond_0
    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mScalePrevious:F

    goto :goto_0
.end method

.method public updateParticleShape()V
    .locals 3

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    iget-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mValidMorpher:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTimeCursor:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iput v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTimeCursor:F

    :cond_0
    :goto_0
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTimeCursor:F

    iget-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mAnimForward:Z

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->makeInterpolatedCommand(FZ)Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    move-result-object v0

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mPrimitive:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    return-void

    :cond_1
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTimeCursor:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iput v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->mCurrentTimeCursor:F

    goto :goto_0
.end method
