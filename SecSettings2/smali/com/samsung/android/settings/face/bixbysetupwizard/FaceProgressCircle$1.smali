.class Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle$1;
.super Ljava/lang/Object;
.source "FaceProgressCircle.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;

    invoke-static {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->-get1(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;

    invoke-static {v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->-get2(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;

    invoke-static {v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->-get1(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->-set0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;F)F

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;

    invoke-virtual {v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->invalidate()V

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;

    invoke-static {v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->-get0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;

    invoke-virtual {v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceProgressCircle;->invalidate()V

    :cond_0
    return-void
.end method
