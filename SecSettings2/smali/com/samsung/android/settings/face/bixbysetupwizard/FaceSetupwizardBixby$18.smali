.class Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$18;
.super Ljava/lang/Object;
.source "FaceSetupwizardBixby.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startIconScaleAnimation(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$18;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    iput p2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$18;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/high16 v5, 0x447a0000    # 1000.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3f19999a    # 0.6f

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$18;->val$mode:I

    if-nez v1, :cond_1

    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;

    invoke-direct {v0, v4, v3}, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;-><init>(FF)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$18;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-get9(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$18;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    const/16 v3, 0x13

    invoke-static {v2, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-wrap0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)F

    move-result v2

    invoke-virtual {v1, v2, v5, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;->setBixbySizeAnimation(FFLandroid/view/animation/Interpolator;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$18;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-get9(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;->invalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$18;->val$mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;

    invoke-direct {v0, v4, v3}, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;-><init>(FF)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$18;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-get9(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$18;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    const/16 v3, 0x18

    invoke-static {v2, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-wrap0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)F

    move-result v2

    invoke-virtual {v1, v2, v5, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;->setBixbySizeAnimation(FFLandroid/view/animation/Interpolator;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$18;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-get9(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;->invalidate()V

    goto :goto_0
.end method
