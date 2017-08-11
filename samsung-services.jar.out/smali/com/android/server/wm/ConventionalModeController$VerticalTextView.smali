.class public Lcom/android/server/wm/ConventionalModeController$VerticalTextView;
.super Landroid/widget/TextView;
.source "ConventionalModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ConventionalModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VerticalTextView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ConventionalModeController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ConventionalModeController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v1}, Lcom/android/server/wm/ConventionalModeController;->-get2(Lcom/android/server/wm/ConventionalModeController;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v1}, Lcom/android/server/wm/ConventionalModeController;->-get2(Lcom/android/server/wm/ConventionalModeController;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f59999a    # 0.85f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v2}, Lcom/android/server/wm/ConventionalModeController;->-get0(Lcom/android/server/wm/ConventionalModeController;)Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->getPaddingSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v3}, Lcom/android/server/wm/ConventionalModeController;->-get0(Lcom/android/server/wm/ConventionalModeController;)Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;->getPaddingSize()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-static {v0}, Lcom/android/server/wm/ConventionalModeController;->-get2(Lcom/android/server/wm/ConventionalModeController;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p2, p1}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ConventionalModeController$VerticalTextView;->setMeasuredDimension(II)V

    goto :goto_0
.end method
