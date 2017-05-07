.class Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$17;
.super Ljava/lang/Object;
.source "FaceSetupwizardBixby.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setParticleMidMode()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$17;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$17;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v4, v6, v7}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-wrap1(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$17;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-get9(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;->addMidCircleBig()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$17;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    const/4 v5, 0x2

    invoke-static {v4, v5, v7}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-wrap1(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;II)I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$17;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-get9(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;->addMidCircleMid()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$17;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    const/4 v5, 0x4

    invoke-static {v4, v6, v5}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-wrap1(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;II)I

    move-result v3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$17;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-get9(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;->addMidCircleSmall()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$17;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-get9(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;->invalidate()V

    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$17;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    invoke-static {v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->-wrap5(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    return-void
.end method
