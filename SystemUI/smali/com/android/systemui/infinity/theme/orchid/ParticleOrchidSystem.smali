.class public Lcom/android/systemui/infinity/theme/orchid/ParticleOrchidSystem;
.super Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;
.source "ParticleOrchidSystem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/infinity/theme/orchid/ParticleOrchidSystem;->isRight:Z

    return-void
.end method


# virtual methods
.method public draw([F[F[F)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->draw([F[F[F)V

    return-void
.end method
