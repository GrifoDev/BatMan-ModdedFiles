.class public Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;
.super Landroid/view/View;
.source "FaceCircleMaskView.java"


# instance fields
.field private mHeight:I

.field private mStrokeWidth:I

.field private mTransPaint:Landroid/graphics/Paint;

.field private final mWhiteColor:I

.field private mWhitePaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mWhitePaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mTransPaint:Landroid/graphics/Paint;

    const v0, -0x50506

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mWhiteColor:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mWhitePaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mTransPaint:Landroid/graphics/Paint;

    const v0, -0x50506

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mWhiteColor:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mWhitePaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mTransPaint:Landroid/graphics/Paint;

    const v0, -0x50506

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mWhiteColor:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mWhitePaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mTransPaint:Landroid/graphics/Paint;

    const v0, -0x50506

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mWhiteColor:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    const v1, 0x7f0a0376

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mWidth:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mHeight:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a037b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mStrokeWidth:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mWhitePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mWhitePaint:Landroid/graphics/Paint;

    const v1, -0x50506

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mTransPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mTransPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mTransPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mTransPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mWidth:I

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mHeight:I

    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->invalidate(IIII)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mStrokeWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->mTransPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
