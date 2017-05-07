.class Lcom/android/keyguard/face/KeyguardFaceIconView$4;
.super Ljava/lang/Object;
.source "KeyguardFaceIconView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/face/KeyguardFaceIconView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/face/KeyguardFaceIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$4;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$4;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-static {v3}, Lcom/android/keyguard/face/KeyguardFaceIconView;->-get2(Lcom/android/keyguard/face/KeyguardFaceIconView;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    :cond_0
    return v6

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$4;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-static {v3, v0}, Lcom/android/keyguard/face/KeyguardFaceIconView;->-wrap1(Lcom/android/keyguard/face/KeyguardFaceIconView;I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$4;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-virtual {v3, v1, v2}, Lcom/android/keyguard/face/KeyguardFaceIconView;->isFaceRecognitionRetryIconSelected(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$4;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-static {v3}, Lcom/android/keyguard/face/KeyguardFaceIconView;->-get1(Lcom/android/keyguard/face/KeyguardFaceIconView;)Landroid/os/PowerManager;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$4;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-static {v3}, Lcom/android/keyguard/face/KeyguardFaceIconView;->-get1(Lcom/android/keyguard/face/KeyguardFaceIconView;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v7}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$4;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-static {v3}, Lcom/android/keyguard/face/KeyguardFaceIconView;->-get0(Lcom/android/keyguard/face/KeyguardFaceIconView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceRecognitionListeningState()V

    :cond_3
    return v6
.end method
