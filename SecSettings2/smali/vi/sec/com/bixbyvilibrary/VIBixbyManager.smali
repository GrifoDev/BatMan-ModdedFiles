.class public Lvi/sec/com/bixbyvilibrary/VIBixbyManager;
.super Ljava/lang/Object;
.source "VIBixbyManager.java"


# static fields
.field private static mBixbyCircleRadius:F

.field private static mBixbyInitCircleRadius:F

.field private static mMaxDurationEnd:I

.field private static mMaxDurationStart:I

.field private static mMaxDurationStartOffset:I

.field private static mMaxParticleDisappearEnd:F

.field private static mMaxParticleDisappearStart:F

.field private static mMaxParticleSizeBigEnd:F

.field private static mMaxParticleSizeBigStart:F

.field private static mMaxParticleSizeMidEnd:F

.field private static mMaxParticleSizeMidStart:F

.field private static mMaxParticleSizeSmallEnd:F

.field private static mMaxParticleSizeSmallStart:F

.field private static mMidDurationEnd:I

.field private static mMidDurationStart:I

.field private static mMidDurationStartOffset:I

.field private static mMidParticleDisappearEnd:F

.field private static mMidParticleDisappearStart:F

.field private static mMidParticleSizeBigEnd:F

.field private static mMidParticleSizeBigStart:F

.field private static mMidParticleSizeMidEnd:F

.field private static mMidParticleSizeMidStart:F

.field private static mMidParticleSizeSmallEnd:F

.field private static mMidParticleSizeSmallStart:F


# instance fields
.field private final DEBUG_DRAW_GUIDE_LINE:Z

.field private final DEBUG_DRAW_MORPH:Z

.field private final DEBUG_LONG_DURATION:I

.field private mBixbyAnimationDuration1:F

.field private mBixbyAnimationDuration2:F

.field private mBixbyAnimationDuration3:F

.field private mBixbyAnimationGoingDown:Z

.field private mBixbyAnimationMinSize:F

.field private mBixbyAnimationProgress:F

.field private mBixbyAnimationSize1:F

.field private mBixbyAnimationSize2:F

.field private mBixbyAnimationSize3:F

.field private mBixbyAnimationStartTime:J

.field private mBixbyEmptyParticles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;",
            ">;"
        }
    .end annotation
.end field

.field private mBixbyLetterScale:F

.field private mBixbyLetterSize1:F

.field private mBixbyLetterSize2:F

.field private mBixbyLetterSize3:F

.field private mBixbyParticles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;",
            ">;"
        }
    .end annotation
.end field

.field private mBixbyRemoveParticles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;",
            ">;"
        }
    .end annotation
.end field

.field private mBixbyScaleAnimationStart:Z

.field private mBixbySizeAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mBixbySizeAnimationStart:Z

.field private mBixbySizeAnimationTarget:F

.field private mBoundSymbolB:Landroid/graphics/Rect;

.field private mCenterX:F

.field private mCenterY:F

.field private mContext:Landroid/content/Context;

.field private mCurrentTime:J

.field private mHeightSymbolB:I

.field private mListSVG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvi/sec/com/bixbyvilibrary/VIPrimitive;",
            ">;"
        }
    .end annotation
.end field

.field private mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

.field private mOnDrawResult:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mParser:Lvi/sec/com/bixbyvilibrary/VISVGParser;

.field private mRandom:Ljava/util/Random;

.field private mSineInOut33:Lvi/sec/com/bixbyvilibrary/SineInOut33;

.field private mVectorDrawableSymbolB:Landroid/graphics/drawable/Drawable;

.field private mView:Landroid/view/View;

.field private mWidthSymbolB:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->DEBUG_DRAW_MORPH:Z

    iput-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->DEBUG_DRAW_GUIDE_LINE:Z

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->DEBUG_LONG_DURATION:I

    iput-boolean v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyScaleAnimationStart:Z

    iput-boolean v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationGoingDown:Z

    const v0, 0x43a68000    # 333.0f

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration3:F

    new-instance v0, Lvi/sec/com/bixbyvilibrary/VISVGParser;

    invoke-direct {v0}, Lvi/sec/com/bixbyvilibrary/VISVGParser;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mParser:Lvi/sec/com/bixbyvilibrary/VISVGParser;

    new-instance v0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    invoke-direct {v0}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mListSVG:Ljava/util/List;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBoundSymbolB:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbySizeAnimationStart:Z

    iput-object p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mView:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mVectorDrawableSymbolB:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->init()V

    return-void
.end method

.method private addBixbyParticle(FFFFF)V
    .locals 9

    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getBixbyParticle()Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;

    move-result-object v1

    iget-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyScaleAnimationStart:Z

    if-nez v2, :cond_2

    :cond_0
    iget v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterX:F

    iget v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterY:F

    sget v4, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    const/high16 v5, 0x40000000    # 2.0f

    sub-float/2addr v4, v5

    iget-object v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    invoke-virtual {v1, v2, v3, v4, v5}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->initMorphingShape(FFFLvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;)Z

    :goto_0
    iget-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->initAnimation(FFFFJF)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_1

    iget-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v8, v0, v2

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v8}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->initAnimation(FFFFJF)F

    invoke-virtual {v1}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    invoke-virtual {v1}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->updateParticleShape()V

    iget-object v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyParticles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationGoingDown:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterX:F

    iget v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterY:F

    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationMinSize:F

    const/high16 v5, 0x40e00000    # 7.0f

    sub-float/2addr v4, v5

    iget-object v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    invoke-virtual {v1, v2, v3, v4, v5}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->initMorphingShape(FFFLvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private drawBixbyBcharacter(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v3, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mVectorDrawableSymbolB:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBoundSymbolB:Landroid/graphics/Rect;

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mWidthSymbolB:I

    iget v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mHeightSymbolB:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBoundSymbolB:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBoundSymbolB:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBoundSymbolB:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBoundSymbolB:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBoundSymbolB:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterX:F

    iget v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mWidthSymbolB:I

    int-to-float v3, v3

    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBoundSymbolB:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterY:F

    iget v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mHeightSymbolB:I

    int-to-float v3, v3

    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBoundSymbolB:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterX:F

    iget v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mWidthSymbolB:I

    int-to-float v3, v3

    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBoundSymbolB:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterY:F

    iget v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mHeightSymbolB:I

    int-to-float v3, v3

    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mVectorDrawableSymbolB:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBoundSymbolB:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mVectorDrawableSymbolB:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawBixbyParticles(Landroid/graphics/Canvas;)Z
    .locals 6

    const/4 v3, 0x0

    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyParticles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyRemoveParticles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_2

    :goto_1
    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyParticles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_4

    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;

    iget-object v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mPaint:Landroid/graphics/Paint;

    iget-wide v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    invoke-virtual {v0, p1, v2, v4, v5}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->drawingBixbyMorphingShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;J)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyRemoveParticles:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyRemoveParticles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyRemoveParticles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;

    iget-object v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyParticles:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyEmptyParticles:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return v3
.end method

.method private drawMainCircle(Landroid/graphics/Canvas;)Z
    .locals 11

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyScaleAnimationStart:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbySizeAnimationStart:Z

    if-nez v0, :cond_7

    :goto_0
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterX:F

    iget v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterY:F

    sget v3, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return v1

    :cond_0
    iget-wide v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    iget-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationStartTime:J

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration1:F

    float-to-long v8, v0

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    iput-boolean v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationGoingDown:Z

    iget-wide v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    iget-wide v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationStartTime:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration1:F

    div-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterX:F

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterY:F

    sget v3, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize1:F

    iget v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterSize1:F

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v10

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    return v2

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-wide v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    iget-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationStartTime:J

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration1:F

    float-to-long v8, v0

    add-long/2addr v6, v8

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration2:F

    float-to-long v8, v0

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3

    move v0, v1

    :goto_2
    if-nez v0, :cond_4

    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationGoingDown:Z

    iget-wide v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    iget-wide v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationStartTime:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration1:F

    sub-float/2addr v0, v1

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration2:F

    div-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterX:F

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterY:F

    sget v3, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize1:F

    add-float/2addr v3, v4

    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize2:F

    iget v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterSize1:F

    add-float/2addr v0, v10

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterSize2:F

    iget v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    return v2

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    iget-wide v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    iget-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationStartTime:J

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration1:F

    float-to-long v8, v0

    add-long/2addr v6, v8

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration2:F

    float-to-long v8, v0

    add-long/2addr v6, v8

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration3:F

    float-to-long v8, v0

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_5

    move v0, v1

    :goto_3
    if-nez v0, :cond_6

    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationGoingDown:Z

    iget-wide v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    iget-wide v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationStartTime:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration1:F

    sub-float/2addr v0, v1

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration2:F

    sub-float/2addr v0, v1

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration3:F

    div-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterX:F

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterY:F

    sget v3, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize1:F

    add-float/2addr v3, v4

    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize2:F

    add-float/2addr v3, v4

    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize3:F

    iget v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterSize1:F

    add-float/2addr v0, v10

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterSize2:F

    add-float/2addr v0, v1

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterSize3:F

    iget v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    return v2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyScaleAnimationStart:Z

    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationGoingDown:Z

    iput v10, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    goto/16 :goto_0

    :cond_7
    iget-wide v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    iget-wide v6, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationStartTime:J

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration1:F

    float-to-long v8, v0

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_8

    move v0, v1

    :goto_4
    if-nez v0, :cond_a

    iget-wide v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    iget-wide v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationStartTime:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration1:F

    div-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbySizeAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_9

    :goto_5
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterX:F

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterY:F

    sget v3, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize1:F

    iget v5, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sget v0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize1:F

    iget v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyInitCircleRadius:F

    div-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    return v2

    :cond_8
    move v0, v2

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbySizeAnimationInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationProgress:F

    goto :goto_5

    :cond_a
    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbySizeAnimationStart:Z

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbySizeAnimationTarget:F

    sput v0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbySizeAnimationTarget:F

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyInitCircleRadius:F

    div-float/2addr v0, v2

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    goto/16 :goto_0
.end method

.method private getBixbyParticle()Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;
    .locals 2

    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyEmptyParticles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyEmptyParticles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;

    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyEmptyParticles:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;->setAnimForward(Z)V

    return-object v0

    :cond_0
    new-instance v0, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;

    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSineInOut33:Lvi/sec/com/bixbyvilibrary/SineInOut33;

    invoke-direct {v0, v1}, Lvi/sec/com/bixbyvilibrary/VIBixbyParticle;-><init>(Lvi/sec/com/bixbyvilibrary/SineInOut33;)V

    goto :goto_0
.end method

.method private getMidDisappearLength()F
    .locals 3

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleDisappearEnd:F

    float-to-int v1, v1

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleDisappearStart:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleDisappearStart:F

    add-float/2addr v0, v1

    return v0
.end method

.method private getMidDuration()F
    .locals 3

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidDurationEnd:I

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidDurationStart:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidDurationStart:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private getMidDurationStartOffset()F
    .locals 2

    sget v0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidDurationStartOffset:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidDurationStartOffset:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getMidSizeBig()F
    .locals 3

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeBigEnd:F

    float-to-int v1, v1

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeBigStart:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeBigStart:F

    add-float/2addr v0, v1

    return v0
.end method

.method private getMidSizeMid()F
    .locals 3

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeMidEnd:F

    float-to-int v1, v1

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeMidStart:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeMidStart:F

    add-float/2addr v0, v1

    return v0
.end method

.method private getMidSizeSmall()F
    .locals 3

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeSmallEnd:F

    float-to-int v1, v1

    sget v2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeSmallStart:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeSmallStart:F

    add-float/2addr v0, v1

    return v0
.end method

.method private init()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    new-instance v0, Lvi/sec/com/bixbyvilibrary/SineInOut33;

    invoke-direct {v0}, Lvi/sec/com/bixbyvilibrary/SineInOut33;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mSineInOut33:Lvi/sec/com/bixbyvilibrary/SineInOut33;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyParticles:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyRemoveParticles:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyEmptyParticles:Ljava/util/Vector;

    iput v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterScale:F

    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->initializeParserAndMorpher()V

    return-void
.end method

.method private initializeParserAndMorpher()V
    .locals 6

    const/high16 v5, 0x42c80000    # 100.0f

    iget-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mListSVG:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mParser:Lvi/sec/com/bixbyvilibrary/VISVGParser;

    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->initialize(Landroid/content/Context;)Z

    sget-object v3, Lvi/sec/com/bixbyvilibrary/VIBixbyPathData;->mPathStr:[Ljava/lang/String;

    array-length v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    div-float v1, v5, v3

    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lvi/sec/com/bixbyvilibrary/VIBixbyPathData;->mPathStr:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    return-void

    :cond_0
    new-instance v2, Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    invoke-direct {v2}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;-><init>()V

    iget-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mParser:Lvi/sec/com/bixbyvilibrary/VISVGParser;

    sget-object v4, Lvi/sec/com/bixbyvilibrary/VIBixbyPathData;->mPathStr:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->parsingPathElement(Ljava/lang/String;Lvi/sec/com/bixbyvilibrary/VIPrimitive;)Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    if-eqz v0, :cond_1

    sget-object v3, Lvi/sec/com/bixbyvilibrary/VIBixbyPathData;->mPathStr:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    int-to-float v4, v0

    mul-float/2addr v4, v1

    invoke-virtual {v3, v2, v4}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->addPrimitiveToShape(Lvi/sec/com/bixbyvilibrary/VIPrimitive;F)Z

    :goto_1
    iget-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mListSVG:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    invoke-virtual {v3, v2}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->setPrimitiveFromShape(Lvi/sec/com/bixbyvilibrary/VIPrimitive;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMorpher:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    invoke-virtual {v3, v2, v5}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->addPrimitiveToShape(Lvi/sec/com/bixbyvilibrary/VIPrimitive;F)Z

    goto :goto_1
.end method

.method private randomRange(II)I
    .locals 2

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mRandom:Ljava/util/Random;

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public addMidCircleBig()V
    .locals 10

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    const/4 v0, 0x0

    const/16 v3, 0xe10

    invoke-direct {p0, v0, v3}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->randomRange(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41200000    # 10.0f

    div-float v1, v0, v3

    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMidSizeBig()F

    move-result v2

    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMidDurationStartOffset()F

    move-result v7

    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMidDuration()F

    move-result v6

    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMidDisappearLength()F

    move-result v5

    mul-float v3, v7, v4

    mul-float/2addr v4, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addBixbyParticle(FFFFF)V

    return-void
.end method

.method public addMidCircleMid()V
    .locals 10

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    const/4 v0, 0x0

    const/16 v3, 0xe10

    invoke-direct {p0, v0, v3}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->randomRange(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41200000    # 10.0f

    div-float v1, v0, v3

    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMidSizeMid()F

    move-result v2

    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMidDurationStartOffset()F

    move-result v7

    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMidDuration()F

    move-result v6

    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMidDisappearLength()F

    move-result v5

    mul-float v3, v7, v4

    mul-float/2addr v4, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addBixbyParticle(FFFFF)V

    return-void
.end method

.method public addMidCircleSmall()V
    .locals 10

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    const/4 v0, 0x0

    const/16 v3, 0xe10

    invoke-direct {p0, v0, v3}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->randomRange(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41200000    # 10.0f

    div-float v1, v0, v3

    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMidSizeSmall()F

    move-result v2

    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMidDurationStartOffset()F

    move-result v7

    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMidDuration()F

    move-result v6

    invoke-direct {p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->getMidDisappearLength()F

    move-result v5

    mul-float v3, v7, v4

    mul-float/2addr v4, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addBixbyParticle(FFFFF)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCurrentTime:J

    invoke-direct {p0, p1}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->drawMainCircle(Landroid/graphics/Canvas;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mOnDrawResult:Z

    invoke-direct {p0, p1}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->drawBixbyParticles(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-direct {p0, p1}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->drawMainCircle(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-direct {p0, p1}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->drawBixbyBcharacter(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mOnDrawResult:Z

    return v0

    :cond_0
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mOnDrawResult:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mOnDrawResult:Z

    goto :goto_1
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    const/high16 v1, 0x40000000    # 2.0f

    int-to-float v0, p1

    div-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterX:F

    int-to-float v0, p2

    div-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mCenterY:F

    return-void
.end method

.method public setBixbySizeAnimation(FFLandroid/view/animation/Interpolator;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyScaleAnimationStart:Z

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbySizeAnimationStart:Z

    if-nez v0, :cond_0

    sget v0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbySizeAnimationStart:Z

    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbySizeAnimationTarget:F

    sget v0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    sub-float v0, p1, v0

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize1:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, p2

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationDuration1:F

    iput-object p3, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbySizeAnimationInterpolator:Landroid/view/animation/Interpolator;

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationSize1:F

    sget v1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyInitCircleRadius:F

    div-float/2addr v0, v1

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyLetterSize1:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyAnimationStartTime:J

    return v2
.end method

.method public setDisappearDistances(FFFF)V
    .locals 0

    sput p1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleDisappearStart:F

    sput p2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleDisappearEnd:F

    sput p3, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleDisappearStart:F

    sput p4, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleDisappearEnd:F

    return-void
.end method

.method public setInitBixbyBresource(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mVectorDrawableSymbolB:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mVectorDrawableSymbolB:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mWidthSymbolB:I

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mVectorDrawableSymbolB:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mHeightSymbolB:I

    return-void
.end method

.method public setInitBixbyCircleRadius(F)V
    .locals 0

    sput p1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyInitCircleRadius:F

    sput p1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mBixbyCircleRadius:F

    return-void
.end method

.method public setInitDurations(IIIIII)V
    .locals 0

    sput p1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidDurationStartOffset:I

    sput p2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidDurationStart:I

    sput p3, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidDurationEnd:I

    sput p4, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxDurationStartOffset:I

    sput p5, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxDurationStart:I

    sput p6, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxDurationEnd:I

    return-void
.end method

.method public setInitMaxParticleSizes(FFFFFF)V
    .locals 0

    sput p1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleSizeSmallStart:F

    sput p2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleSizeSmallEnd:F

    sput p3, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleSizeMidStart:F

    sput p4, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleSizeMidEnd:F

    sput p5, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleSizeBigStart:F

    sput p6, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMaxParticleSizeBigEnd:F

    return-void
.end method

.method public setInitMidParticleSizes(FFFFFF)V
    .locals 0

    sput p1, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeSmallStart:F

    sput p2, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeSmallEnd:F

    sput p3, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeMidStart:F

    sput p4, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeMidEnd:F

    sput p5, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeBigStart:F

    sput p6, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->mMidParticleSizeBigEnd:F

    return-void
.end method
