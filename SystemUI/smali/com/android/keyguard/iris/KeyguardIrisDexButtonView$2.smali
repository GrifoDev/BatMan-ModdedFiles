.class Lcom/android/keyguard/iris/KeyguardIrisDexButtonView$2;
.super Ljava/lang/Object;
.source "KeyguardIrisDexButtonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/iris/KeyguardIrisDexButtonView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/iris/KeyguardIrisDexButtonView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/iris/KeyguardIrisDexButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/iris/KeyguardIrisDexButtonView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisDexButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisDexButtonView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisDexButtonView;

    iget-object v0, v0, Lcom/android/keyguard/iris/KeyguardIrisDexButtonView;->mPm:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisDexButtonView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisDexButtonView;

    iget-object v0, v0, Lcom/android/keyguard/iris/KeyguardIrisDexButtonView;->mPm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisDexButtonView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisDexButtonView;->-get3(Lcom/android/keyguard/iris/KeyguardIrisDexButtonView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsIrisRunning:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "KeyguardIrisDexButtonView"

    const-string/jumbo v1, "onClick, stop iris"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisDexButtonView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisDexButtonView;->-get3(Lcom/android/keyguard/iris/KeyguardIrisDexButtonView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisDexButtonView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisDexButtonView;->-get2(Lcom/android/keyguard/iris/KeyguardIrisDexButtonView;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_iris_start_for_dex:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "KeyguardIrisDexButtonView"

    const-string/jumbo v1, "onClick, update iris"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisDexButtonView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisDexButtonView;->-get3(Lcom/android/keyguard/iris/KeyguardIrisDexButtonView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIrisListeningState()V

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisDexButtonView$2;->this$0:Lcom/android/keyguard/iris/KeyguardIrisDexButtonView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisDexButtonView;->-get2(Lcom/android/keyguard/iris/KeyguardIrisDexButtonView;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_iris_cancel_for_dex:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
