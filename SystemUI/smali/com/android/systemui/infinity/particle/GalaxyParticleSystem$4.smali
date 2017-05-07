.class Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$4;
.super Ljava/lang/Object;
.source "GalaxyParticleSystem.java"

# interfaces
.implements Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->makePaticleBig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$4;->this$0:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/altamirasoft/glanimationutil/GLValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$4;->this$0:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-virtual {p1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->getCurrentValue()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticleMaxDistance:F

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$4;->this$0:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-static {v0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->-wrap0(Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;)V

    return-void
.end method
