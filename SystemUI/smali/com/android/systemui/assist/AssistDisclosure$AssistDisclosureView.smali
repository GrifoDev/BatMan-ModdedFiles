.class Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;
.super Landroid/view/View;
.source "AssistDisclosure.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistDisclosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssistDisclosureView"
.end annotation


# instance fields
.field private mAlpha:I

.field private final mAlphaInAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaOutAnimator:Landroid/animation/ValueAnimator;

.field private final mAnimator:Landroid/animation/AnimatorSet;

.field private mArcPadding:F

.field private final mArcPaint:Landroid/graphics/Paint;

.field private final mArcShadowPaint:Landroid/graphics/Paint;

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private final mShadowPaint:Landroid/graphics/Paint;

.field private mShadowThickness:F

.field private mThickness:F

.field private final mTracingAnimator:Landroid/animation/ValueAnimator;

.field private mTracingProgress:F

.field final synthetic this$0:Lcom/android/systemui/assist/AssistDisclosure;


# direct methods
.method public constructor <init>(Lcom/android/systemui/assist/AssistDisclosure;Landroid/content/Context;)V
    .locals 8

    const/4 v7, -0x1

    const v6, -0xbbbbbc

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    iput-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->this$0:Lcom/android/systemui/assist/AssistDisclosure;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcShadowPaint:Landroid/graphics/Paint;

    iput v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mTracingProgress:F

    iput v4, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    const/4 v1, 0x2

    new-array v1, v1, [F

    aput v2, v1, v4

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mTracingAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mTracingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mTracingAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mContext:Landroid/content/Context;

    const/high16 v3, 0x7f080000

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v1, 0xff

    filled-new-array {v4, v1}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1c2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v1, 0xff

    filled-new-array {v1, v4}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mTracingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView$1;-><init>(Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d033d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mThickness:F

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d033e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowThickness:F

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_ASSIST_ROUND_DISCLOSURE:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d033f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0340

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPadding:F

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mThickness:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcShadowPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mThickness:F

    iget v3, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowThickness:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcShadowPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    return-void
.end method

.method private drawArc(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;)V
    .locals 9

    const/4 v7, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V
    .locals 6

    sub-float v1, p2, p7

    sub-float v2, p3, p7

    add-float v3, p4, p7

    add-float v4, p5, p7

    move-object v0, p1

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawGeometry(Landroid/graphics/Canvas;Landroid/graphics/Paint;FZ)V
    .locals 22

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->getWidth()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mThickness:F

    move/from16 v18, v0

    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_ASSIST_ROUND_DISCLOSURE:Z

    if-eqz v2, :cond_6

    const/high16 v11, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    float-to-double v2, v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v2, v4

    double-to-float v14, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mTracingProgress:F

    add-int v3, v21, v15

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v14, v4

    add-float/2addr v3, v4

    mul-float v16, v2, v3

    if-eqz p4, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcShadowPaint:Landroid/graphics/Paint;

    :goto_0
    move/from16 v0, v21

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    sub-float/2addr v2, v3

    add-float v2, v2, v18

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v13

    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-lez v2, :cond_0

    move/from16 v0, v21

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v4, v2, v13

    int-to-float v2, v15

    sub-float v5, v2, v18

    move/from16 v0, v21

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v6, v2, v13

    int-to-float v7, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    :cond_0
    sub-float v2, v16, v13

    const/high16 v3, 0x40800000    # 4.0f

    div-float v3, v14, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v12

    const/4 v2, 0x0

    cmpl-float v2, v12, v2

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPadding:F

    const/4 v3, 0x0

    add-float v4, v3, v2

    int-to-float v2, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPadding:F

    sub-float v5, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPadding:F

    add-float v6, v2, v3

    int-to-float v2, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPadding:F

    sub-float v7, v2, v3

    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v2, 0x42b40000    # 90.0f

    mul-float/2addr v2, v12

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    div-float v9, v2, v14

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawArc(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;)V

    move/from16 v0, v21

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPadding:F

    sub-float v4, v2, v3

    int-to-float v2, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPadding:F

    sub-float v5, v2, v3

    move/from16 v0, v21

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPadding:F

    sub-float v6, v2, v3

    int-to-float v2, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPadding:F

    sub-float v7, v2, v3

    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v2, 0x42b40000    # 90.0f

    mul-float/2addr v2, v12

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    div-float/2addr v2, v14

    neg-float v9, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawArc(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;)V

    :cond_1
    sub-float v2, v16, v13

    sub-float/2addr v2, v12

    int-to-float v3, v15

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    add-float v3, v3, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v17

    const/4 v2, 0x0

    cmpl-float v2, v17, v2

    if-lez v2, :cond_2

    const/4 v4, 0x0

    int-to-float v2, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v18, v3

    add-float/2addr v2, v3

    sub-float v5, v2, v17

    int-to-float v2, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v18, v3

    add-float v7, v2, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, v18

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    move/from16 v0, v21

    int-to-float v2, v0

    sub-float v4, v2, v18

    int-to-float v2, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v18, v3

    add-float/2addr v2, v3

    sub-float v5, v2, v17

    move/from16 v0, v21

    int-to-float v6, v0

    int-to-float v2, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v18, v3

    add-float v7, v2, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    :cond_2
    sub-float v2, v16, v13

    sub-float/2addr v2, v12

    sub-float v2, v2, v17

    const/high16 v3, 0x40800000    # 4.0f

    div-float v3, v14, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v19

    const/4 v2, 0x0

    cmpl-float v2, v19, v2

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPadding:F

    const/4 v3, 0x0

    add-float v4, v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPadding:F

    const/4 v3, 0x0

    add-float v5, v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPadding:F

    add-float v6, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPadding:F

    add-float v7, v2, v3

    const/high16 v8, 0x43340000    # 180.0f

    const/high16 v2, 0x42b40000    # 90.0f

    mul-float v2, v2, v19

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    div-float v9, v2, v14

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawArc(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;)V

    move/from16 v0, v21

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPadding:F

    sub-float v4, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPadding:F

    const/4 v3, 0x0

    add-float v5, v3, v2

    move/from16 v0, v21

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPadding:F

    sub-float v6, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPadding:F

    add-float v7, v2, v3

    const/4 v8, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    mul-float v2, v2, v19

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    div-float/2addr v2, v14

    neg-float v9, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawArc(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;)V

    :cond_3
    sub-float v2, v16, v13

    sub-float/2addr v2, v12

    sub-float v2, v2, v17

    sub-float v2, v2, v19

    div-int/lit8 v3, v21, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    sub-float/2addr v3, v4

    add-float v3, v3, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v20

    const/4 v2, 0x0

    cmpl-float v2, v17, v2

    if-lez v2, :cond_4

    const/4 v2, 0x0

    cmpl-float v2, v20, v2

    if-lez v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v18, v3

    sub-float v4, v2, v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v18, v3

    sub-float/2addr v2, v3

    add-float v6, v2, v20

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v7, v18

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    move/from16 v0, v21

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v18, v3

    add-float/2addr v2, v3

    sub-float v4, v2, v20

    const/4 v5, 0x0

    move/from16 v0, v21

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v18, v3

    add-float v6, v2, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v7, v18

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPaint:Landroid/graphics/Paint;

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mTracingProgress:F

    add-int v3, v21, v15

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v18

    sub-float/2addr v3, v4

    mul-float v16, v2, v3

    move/from16 v0, v21

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v13

    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-lez v2, :cond_7

    move/from16 v0, v21

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v4, v2, v13

    int-to-float v2, v15

    sub-float v5, v2, v18

    move/from16 v0, v21

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v6, v2, v13

    int-to-float v7, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    :cond_7
    sub-float v2, v16, v13

    int-to-float v3, v15

    sub-float v3, v3, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v17

    const/4 v2, 0x0

    cmpl-float v2, v17, v2

    if-lez v2, :cond_8

    const/4 v4, 0x0

    int-to-float v2, v15

    sub-float v2, v2, v18

    sub-float v5, v2, v17

    int-to-float v2, v15

    sub-float v7, v2, v18

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, v18

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    move/from16 v0, v21

    int-to-float v2, v0

    sub-float v4, v2, v18

    int-to-float v2, v15

    sub-float v2, v2, v18

    sub-float v5, v2, v17

    move/from16 v0, v21

    int-to-float v6, v0

    int-to-float v2, v15

    sub-float v7, v2, v18

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    :cond_8
    sub-float v2, v16, v13

    sub-float v2, v2, v17

    div-int/lit8 v3, v21, 0x2

    int-to-float v3, v3

    sub-float v3, v3, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v20

    const/4 v2, 0x0

    cmpl-float v2, v17, v2

    if-lez v2, :cond_4

    const/4 v2, 0x0

    cmpl-float v2, v20, v2

    if-lez v2, :cond_4

    const/4 v5, 0x0

    add-float v6, v18, v20

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, v18

    move/from16 v7, v18

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    move/from16 v0, v21

    int-to-float v2, v0

    sub-float v2, v2, v18

    sub-float v4, v2, v20

    const/4 v5, 0x0

    move/from16 v0, v21

    int-to-float v2, v0

    sub-float v6, v2, v18

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v7, v18

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    goto/16 :goto_1
.end method

.method private startAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->invalidate()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mTracingAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mTracingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mTracingProgress:F

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->startAnimation()V

    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mTracingProgress:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_ASSIST_ROUND_DISCLOSURE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mArcShadowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowThickness:F

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawGeometry(Landroid/graphics/Canvas;Landroid/graphics/Paint;FZ)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawGeometry(Landroid/graphics/Canvas;Landroid/graphics/Paint;FZ)V

    return-void
.end method
