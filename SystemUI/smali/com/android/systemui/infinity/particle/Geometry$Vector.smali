.class public Lcom/android/systemui/infinity/particle/Geometry$Vector;
.super Ljava/lang/Object;
.source "Geometry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/particle/Geometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vector"
.end annotation


# instance fields
.field public final x:F

.field public final y:F

.field public final z:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/infinity/particle/Geometry$Vector;->x:F

    iput p2, p0, Lcom/android/systemui/infinity/particle/Geometry$Vector;->y:F

    iput p3, p0, Lcom/android/systemui/infinity/particle/Geometry$Vector;->z:F

    return-void
.end method


# virtual methods
.method public crossProduct(Lcom/android/systemui/infinity/particle/Geometry$Vector;)Lcom/android/systemui/infinity/particle/Geometry$Vector;
    .locals 6

    new-instance v0, Lcom/android/systemui/infinity/particle/Geometry$Vector;

    iget v1, p0, Lcom/android/systemui/infinity/particle/Geometry$Vector;->y:F

    iget v2, p1, Lcom/android/systemui/infinity/particle/Geometry$Vector;->z:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/infinity/particle/Geometry$Vector;->z:F

    iget v3, p1, Lcom/android/systemui/infinity/particle/Geometry$Vector;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/infinity/particle/Geometry$Vector;->z:F

    iget v3, p1, Lcom/android/systemui/infinity/particle/Geometry$Vector;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/infinity/particle/Geometry$Vector;->x:F

    iget v4, p1, Lcom/android/systemui/infinity/particle/Geometry$Vector;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/infinity/particle/Geometry$Vector;->x:F

    iget v4, p1, Lcom/android/systemui/infinity/particle/Geometry$Vector;->y:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/infinity/particle/Geometry$Vector;->y:F

    iget v5, p1, Lcom/android/systemui/infinity/particle/Geometry$Vector;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/infinity/particle/Geometry$Vector;-><init>(FFF)V

    return-object v0
.end method

.method public dotProduct(Lcom/android/systemui/infinity/particle/Geometry$Vector;)F
    .locals 3

    iget v0, p0, Lcom/android/systemui/infinity/particle/Geometry$Vector;->x:F

    iget v1, p1, Lcom/android/systemui/infinity/particle/Geometry$Vector;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/particle/Geometry$Vector;->y:F

    iget v2, p1, Lcom/android/systemui/infinity/particle/Geometry$Vector;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/particle/Geometry$Vector;->z:F

    iget v2, p1, Lcom/android/systemui/infinity/particle/Geometry$Vector;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public length()F
    .locals 3

    iget v0, p0, Lcom/android/systemui/infinity/particle/Geometry$Vector;->x:F

    iget v1, p0, Lcom/android/systemui/infinity/particle/Geometry$Vector;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/particle/Geometry$Vector;->y:F

    iget v2, p0, Lcom/android/systemui/infinity/particle/Geometry$Vector;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/particle/Geometry$Vector;->z:F

    iget v2, p0, Lcom/android/systemui/infinity/particle/Geometry$Vector;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public scale(F)Lcom/android/systemui/infinity/particle/Geometry$Vector;
    .locals 4

    new-instance v0, Lcom/android/systemui/infinity/particle/Geometry$Vector;

    iget v1, p0, Lcom/android/systemui/infinity/particle/Geometry$Vector;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/systemui/infinity/particle/Geometry$Vector;->y:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/android/systemui/infinity/particle/Geometry$Vector;->z:F

    mul-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/infinity/particle/Geometry$Vector;-><init>(FFF)V

    return-object v0
.end method
