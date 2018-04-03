.class Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$1;
.super Ljava/lang/Object;
.source "GalaxyParticleSystem.java"

# interfaces
.implements Lcom/altamirasoft/glanimationutil/GLEasingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;-><init>(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$1;->this$0:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishUpdateValue(F)V
    .locals 0

    return-void
.end method

.method public onUpdateCurrentValue(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$1;->this$0:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iput p1, v0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentGyroValue:F

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$1;->this$0:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-static {v0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->-wrap0(Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;)V

    return-void
.end method
