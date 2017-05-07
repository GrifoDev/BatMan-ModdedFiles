.class Lcom/android/systemui/infinity/smoke/SmokeSystem$3;
.super Ljava/lang/Object;
.source "SmokeSystem.java"

# interfaces
.implements Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/infinity/smoke/SmokeSystem;->hideSmoke(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/infinity/smoke/SmokeSystem;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/smoke/SmokeSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem$3;->this$0:Lcom/android/systemui/infinity/smoke/SmokeSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/altamirasoft/glanimationutil/GLValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->getCurrentValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem$3;->this$0:Lcom/android/systemui/infinity/smoke/SmokeSystem;

    iput v0, v1, Lcom/android/systemui/infinity/smoke/SmokeSystem;->targetSmokeAlpha:F

    iget-object v1, p0, Lcom/android/systemui/infinity/smoke/SmokeSystem$3;->this$0:Lcom/android/systemui/infinity/smoke/SmokeSystem;

    invoke-static {v1}, Lcom/android/systemui/infinity/smoke/SmokeSystem;->-wrap0(Lcom/android/systemui/infinity/smoke/SmokeSystem;)V

    return-void
.end method
