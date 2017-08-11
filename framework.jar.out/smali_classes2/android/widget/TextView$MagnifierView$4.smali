.class Landroid/widget/TextView$MagnifierView$4;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$MagnifierView;->getHideAnimator()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$MagnifierView;


# direct methods
.method constructor <init>(Landroid/widget/TextView$MagnifierView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView$MagnifierView$4;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    const-string/jumbo v2, "top"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const-string/jumbo v2, "bottom"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v3, p0, Landroid/widget/TextView$MagnifierView$4;->this$1:Landroid/widget/TextView$MagnifierView;

    const-string/jumbo v2, "verticalOffset"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Landroid/widget/TextView$MagnifierView;->-set1(Landroid/widget/TextView$MagnifierView;I)I

    iget-object v2, p0, Landroid/widget/TextView$MagnifierView$4;->this$1:Landroid/widget/TextView$MagnifierView;

    iget-object v2, v2, Landroid/widget/TextView$MagnifierView;->mRectDst:Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/widget/TextView$MagnifierView$4;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v3}, Landroid/widget/TextView$MagnifierView;->-get10(Landroid/widget/TextView$MagnifierView;)F

    move-result v3

    iget-object v4, p0, Landroid/widget/TextView$MagnifierView$4;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v4}, Landroid/widget/TextView$MagnifierView;->-get10(Landroid/widget/TextView$MagnifierView;)F

    move-result v4

    iget-object v5, p0, Landroid/widget/TextView$MagnifierView$4;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v5}, Landroid/widget/TextView$MagnifierView;->-get9(Landroid/widget/TextView$MagnifierView;)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Landroid/widget/TextView$MagnifierView$4;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-virtual {v2}, Landroid/widget/TextView$MagnifierView;->getMagnifierScreen()V

    return-void
.end method
