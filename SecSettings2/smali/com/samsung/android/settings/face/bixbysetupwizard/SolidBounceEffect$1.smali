.class Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$1;
.super Ljava/lang/Object;
.source "SolidBounceEffect.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-static {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->-get3(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;)F

    move-result v2

    sub-float v0, v1, v2

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->-set2(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;F)F

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-static {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->-get6(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;)F

    move-result v3

    add-float/2addr v3, v0

    invoke-static {v2, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->-set5(Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;F)F

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-virtual {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->invalidate()V

    return-void
.end method
