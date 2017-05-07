.class Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$7;
.super Ljava/lang/Object;
.source "FaceSetupwizardBixby.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startFinishEffect(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$7;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$7;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-get1(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$7;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-get4(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$7;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-get4(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$7$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$7$1;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$7;)V

    const-wide/16 v2, 0xa6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$7;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-get4(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$7$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$7$2;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$7;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
