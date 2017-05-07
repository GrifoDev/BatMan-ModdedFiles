.class public Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;
.super Landroid/view/View;
.source "FaceCompleteView.java"


# instance fields
.field private currentRatio:F

.field private mCenterX:F

.field private mCenterY:F

.field private mHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;->mPaint:Landroid/graphics/Paint;

    iput p2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;->mWidth:I

    iput p3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;->mHeight:I

    int-to-float v0, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;->mCenterX:F

    int-to-float v0, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;->mCenterY:F

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;->mCenterX:F

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;->mRadius:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;->currentRatio:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;->currentRatio:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;->mRadius:F

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;->currentRatio:F

    mul-float v0, v1, v2

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;->mCenterX:F

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;->mCenterY:F

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setRatio(F)V
    .locals 3

    const/4 v2, 0x0

    iput p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;->currentRatio:F

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;->mWidth:I

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;->mHeight:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCompleteView;->invalidate(IIII)V

    return-void
.end method
