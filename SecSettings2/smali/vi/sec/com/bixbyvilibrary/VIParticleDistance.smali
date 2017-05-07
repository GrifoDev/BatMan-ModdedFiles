.class public Lvi/sec/com/bixbyvilibrary/VIParticleDistance;
.super Ljava/lang/Object;
.source "VIParticleDistance.java"


# instance fields
.field private mDiameterParticleNotScaled:F

.field private mValTypeA:F

.field private mValTypeB:F

.field private mValTypeC:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->mValTypeA:F

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->mValTypeB:F

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->mValTypeC:F

    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->mDiameterParticleNotScaled:F

    return-void
.end method


# virtual methods
.method public getDiameterParticleNotScaled()F
    .locals 1

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->mDiameterParticleNotScaled:F

    return v0
.end method

.method public getTypeB()F
    .locals 1

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->mValTypeB:F

    return v0
.end method

.method public getTypeC()F
    .locals 1

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->mValTypeC:F

    return v0
.end method

.method public setDiameterParticleNotScaled(F)V
    .locals 0

    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->mDiameterParticleNotScaled:F

    return-void
.end method

.method public setTypeA(F)V
    .locals 0

    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->mValTypeA:F

    return-void
.end method

.method public setTypeB(F)V
    .locals 0

    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->mValTypeB:F

    return-void
.end method

.method public setTypeC(F)V
    .locals 0

    iput p1, p0, Lvi/sec/com/bixbyvilibrary/VIParticleDistance;->mValTypeC:F

    return-void
.end method
