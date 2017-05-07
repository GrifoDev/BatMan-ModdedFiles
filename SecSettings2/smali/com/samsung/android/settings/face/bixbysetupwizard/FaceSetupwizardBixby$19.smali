.class Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$19;
.super Ljava/lang/Object;
.source "FaceSetupwizardBixby.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startIconTransition(JI)V
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

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$19;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    iput p2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$19;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v2, 0x15e

    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$19;->val$mode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$19;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-get9(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$19;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    const/16 v2, -0x127

    invoke-static {v1, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-wrap0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$19;->val$mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$19;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-get9(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method
