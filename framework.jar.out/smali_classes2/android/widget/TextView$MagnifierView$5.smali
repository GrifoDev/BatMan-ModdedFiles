.class Landroid/widget/TextView$MagnifierView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TextView.java"


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

    iput-object p1, p0, Landroid/widget/TextView$MagnifierView$5;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView$5;->this$1:Landroid/widget/TextView$MagnifierView;

    iget-object v0, v0, Landroid/widget/TextView$MagnifierView;->mRectDst:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/widget/TextView$MagnifierView$5;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v1}, Landroid/widget/TextView$MagnifierView;->-get10(Landroid/widget/TextView$MagnifierView;)F

    move-result v1

    iget-object v2, p0, Landroid/widget/TextView$MagnifierView$5;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v2}, Landroid/widget/TextView$MagnifierView;->-get11(Landroid/widget/TextView$MagnifierView;)F

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView$MagnifierView$5;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v3}, Landroid/widget/TextView$MagnifierView;->-get4(Landroid/widget/TextView$MagnifierView;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/widget/TextView$MagnifierView$5;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v3}, Landroid/widget/TextView$MagnifierView;->-get10(Landroid/widget/TextView$MagnifierView;)F

    move-result v3

    iget-object v4, p0, Landroid/widget/TextView$MagnifierView$5;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v4}, Landroid/widget/TextView$MagnifierView;->-get9(Landroid/widget/TextView$MagnifierView;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Landroid/widget/TextView$MagnifierView$5;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v4}, Landroid/widget/TextView$MagnifierView;->-get11(Landroid/widget/TextView$MagnifierView;)F

    move-result v4

    iget-object v5, p0, Landroid/widget/TextView$MagnifierView$5;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v5}, Landroid/widget/TextView$MagnifierView;->-get8(Landroid/widget/TextView$MagnifierView;)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Landroid/widget/TextView$MagnifierView$5;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v5}, Landroid/widget/TextView$MagnifierView;->-get4(Landroid/widget/TextView$MagnifierView;)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView$5;->this$1:Landroid/widget/TextView$MagnifierView;

    iget-object v1, p0, Landroid/widget/TextView$MagnifierView$5;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v1}, Landroid/widget/TextView$MagnifierView;->-get3(Landroid/widget/TextView$MagnifierView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/TextView$MagnifierView$5;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v2}, Landroid/widget/TextView$MagnifierView;->-get4(Landroid/widget/TextView$MagnifierView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/widget/TextView$MagnifierView;->-set1(Landroid/widget/TextView$MagnifierView;I)I

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView$5;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-virtual {v0}, Landroid/widget/TextView$MagnifierView;->getMagnifierScreen()V

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView$5;->this$1:Landroid/widget/TextView$MagnifierView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/TextView$MagnifierView;->-set0(Landroid/widget/TextView$MagnifierView;Z)Z

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView$5;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v0}, Landroid/widget/TextView$MagnifierView;->-wrap0(Landroid/widget/TextView$MagnifierView;)V

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView$5;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v0}, Landroid/widget/TextView$MagnifierView;->-get17(Landroid/widget/TextView$MagnifierView;)Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
