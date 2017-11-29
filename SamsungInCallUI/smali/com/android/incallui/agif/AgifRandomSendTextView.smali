.class public Lcom/android/incallui/agif/AgifRandomSendTextView;
.super Landroid/widget/TextView;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStrokeColor:I

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/agif/AgifRandomSendTextView;->mStrokeWidth:F

    iput-object p1, p0, Lcom/android/incallui/agif/AgifRandomSendTextView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/agif/AgifRandomSendTextView;->mStrokeWidth:F

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/agif/AgifRandomSendTextView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/agif/AgifRandomSendTextView;->mStrokeWidth:F

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/agif/AgifRandomSendTextView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    iput-object p1, p0, Lcom/android/incallui/agif/AgifRandomSendTextView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifRandomSendTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/incallui/agif/AgifRandomSendTextView;->mStrokeWidth:F

    iget-object v0, p0, Lcom/android/incallui/agif/AgifRandomSendTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/agif/AgifRandomSendTextView;->mStrokeColor:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifRandomSendTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifRandomSendTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifRandomSendTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/agif/AgifRandomSendTextView;->mStrokeWidth:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    iget v1, p0, Lcom/android/incallui/agif/AgifRandomSendTextView;->mStrokeColor:I

    invoke-virtual {p0, v1}, Lcom/android/incallui/agif/AgifRandomSendTextView;->setTextColor(I)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifRandomSendTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifRandomSendTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
