.class Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$10;
.super Ljava/lang/Object;
.source "FaceSetupwizardBixby.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$10;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    iput p2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$10;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$10;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$10;->val$result:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setEnrollResult(I)V

    return-void
.end method
