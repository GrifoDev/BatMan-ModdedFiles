.class public Lcom/android/systemui/infinity/theme/blue/ThemeBlue;
.super Lcom/android/systemui/infinity/theme/Theme;
.source "ThemeBlue.java"

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

    new-instance v0, Lcom/android/systemui/infinity/theme/blue/BackgroundBlueSystem;

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/blue/ThemeBlue;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/infinity/theme/blue/BackgroundBlueSystem;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getParticleSystem()Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;
    .locals 2

    new-instance v0, Lcom/android/systemui/infinity/theme/blue/ParticleBlueSystem;

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/blue/ThemeBlue;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/infinity/theme/blue/ParticleBlueSystem;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSmokeSystem()Lcom/android/systemui/infinity/smoke/SmokeSystem;
    .locals 2

    new-instance v0, Lcom/android/systemui/infinity/theme/blue/SmokeBlueSystem;

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/blue/ThemeBlue;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/infinity/theme/blue/SmokeBlueSystem;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getTangramSystem()Lcom/android/systemui/infinity/tangram/TangramSystem;
    .locals 2

    new-instance v0, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/blue/ThemeBlue;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/infinity/theme/blue/TangramBlueSystem;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
