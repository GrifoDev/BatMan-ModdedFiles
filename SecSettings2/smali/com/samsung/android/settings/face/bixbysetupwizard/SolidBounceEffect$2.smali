.class Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;
.super Ljava/lang/Object;
.source "SolidBounceEffect.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->moveToTraget(JFJFJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-static {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->-get2(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->-set4(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->-set2(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;F)F

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->-set1(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;F)F

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-static {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->-get5(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;)F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-static {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->-get1(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;)F

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->-set0(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->-get0(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    iget-wide v2, v1, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->mDuration2ndBezierY:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->-get0(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->-get0(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2$1;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$2;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->-get0(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
