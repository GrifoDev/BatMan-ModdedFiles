.class Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView$1;
.super Ljava/lang/Object;
.source "ColorGradientAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;


# direct methods
.method constructor <init>(Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView$1;->this$0:Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView$1;->this$0:Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->mGradient_anim_value_right:F

    iget-object v0, p0, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView$1;->this$0:Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;

    invoke-virtual {v0}, Lcom/sec/android/gradient_color_extractor/ColorGradientAnimator$ColorGradientAnimationView;->invalidate()V

    return-void
.end method
