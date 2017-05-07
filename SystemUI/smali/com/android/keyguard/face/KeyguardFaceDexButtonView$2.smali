.class Lcom/android/keyguard/face/KeyguardFaceDexButtonView$2;
.super Ljava/lang/Object;
.source "KeyguardFaceDexButtonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/face/KeyguardFaceDexButtonView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/face/KeyguardFaceDexButtonView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/face/KeyguardFaceDexButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/face/KeyguardFaceDexButtonView$2;->this$0:Lcom/android/keyguard/face/KeyguardFaceDexButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceDexButtonView$2;->this$0:Lcom/android/keyguard/face/KeyguardFaceDexButtonView;

    iget-object v0, v0, Lcom/android/keyguard/face/KeyguardFaceDexButtonView;->mPm:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceDexButtonView$2;->this$0:Lcom/android/keyguard/face/KeyguardFaceDexButtonView;

    iget-object v0, v0, Lcom/android/keyguard/face/KeyguardFaceDexButtonView;->mPm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceDexButtonView$2;->this$0:Lcom/android/keyguard/face/KeyguardFaceDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/face/KeyguardFaceDexButtonView;->-get2(Lcom/android/keyguard/face/KeyguardFaceDexButtonView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "KeyguardFaceDexButtonView"

    const-string/jumbo v1, "onClick, stop face recognition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceDexButtonView$2;->this$0:Lcom/android/keyguard/face/KeyguardFaceDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/face/KeyguardFaceDexButtonView;->-get2(Lcom/android/keyguard/face/KeyguardFaceDexButtonView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceDexButtonView$2;->this$0:Lcom/android/keyguard/face/KeyguardFaceDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/face/KeyguardFaceDexButtonView;->-get1(Lcom/android/keyguard/face/KeyguardFaceDexButtonView;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_face_start_for_dex:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "KeyguardFaceDexButtonView"

    const-string/jumbo v1, "onClick, update face recognition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceDexButtonView$2;->this$0:Lcom/android/keyguard/face/KeyguardFaceDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/face/KeyguardFaceDexButtonView;->-get2(Lcom/android/keyguard/face/KeyguardFaceDexButtonView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceRecognitionListeningState()V

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceDexButtonView$2;->this$0:Lcom/android/keyguard/face/KeyguardFaceDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/face/KeyguardFaceDexButtonView;->-get1(Lcom/android/keyguard/face/KeyguardFaceDexButtonView;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_face_cancel_for_dex:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
