.class public Lcom/android/systemui/infinity/theme/pink/ThemePink;
.super Lcom/android/systemui/infinity/theme/Theme;
.source "ThemePink.java"

# interfaces
.implements Lcom/android/systemui/infinity/theme/ThemeInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/infinity/theme/Theme;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getHomeBackgroundSystem()Lcom/android/systemui/infinity/background/BackgroundSystem;
    .locals 2

    new-instance v0, Lcom/android/systemui/infinity/theme/pink/BackgroundPinkSystem;

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/pink/ThemePink;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/infinity/theme/pink/BackgroundPinkSystem;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getParticleSystem()Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;
    .locals 2

    new-instance v0, Lcom/android/systemui/infinity/theme/pink/ParticlePinkSystem;

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/pink/ThemePink;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/infinity/theme/pink/ParticlePinkSystem;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSmokeSystem()Lcom/android/systemui/infinity/smoke/SmokeSystem;
    .locals 2

    new-instance v0, Lcom/android/systemui/infinity/theme/pink/SmokePinkSystem;

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/pink/ThemePink;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/infinity/theme/pink/SmokePinkSystem;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getTangramSystem()Lcom/android/systemui/infinity/tangram/TangramSystem;
    .locals 2

    new-instance v0, Lcom/android/systemui/infinity/theme/pink/TangramPinkSystem;

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/pink/ThemePink;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/infinity/theme/pink/TangramPinkSystem;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
