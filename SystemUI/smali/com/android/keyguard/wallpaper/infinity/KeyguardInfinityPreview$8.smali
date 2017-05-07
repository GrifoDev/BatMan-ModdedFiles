.class Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview$8;
.super Ljava/lang/Object;
.source "KeyguardInfinityPreview.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;->plusAnimation(Lcom/android/keyguard/wallpaper/infinity/GalaxyViewCircle;FJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;

.field final synthetic val$targetView:Lcom/android/keyguard/wallpaper/infinity/GalaxyViewCircle;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;Lcom/android/keyguard/wallpaper/infinity/GalaxyViewCircle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview$8;->this$0:Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;

    iput-object p2, p0, Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview$8;->val$targetView:Lcom/android/keyguard/wallpaper/infinity/GalaxyViewCircle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview$8;->this$0:Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;

    invoke-static {v1, v0}, Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;->-set0(Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview;F)F

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/infinity/KeyguardInfinityPreview$8;->val$targetView:Lcom/android/keyguard/wallpaper/infinity/GalaxyViewCircle;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/wallpaper/infinity/GalaxyViewCircle;->changePlusValue(F)V

    return-void
.end method
