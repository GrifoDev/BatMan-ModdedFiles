.class Lcom/android/keyguard/face/KeyguardFaceIconView$3;
.super Ljava/lang/Object;
.source "KeyguardFaceIconView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    iput-object p1, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$3;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/face/KeyguardFaceIconView$3;->this$0:Lcom/android/keyguard/face/KeyguardFaceIconView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/keyguard/face/KeyguardFaceIconView;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
