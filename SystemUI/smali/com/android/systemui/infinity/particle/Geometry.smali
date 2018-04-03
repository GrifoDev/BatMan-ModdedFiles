.class public Lcom/android/systemui/infinity/particle/Geometry;
.super Ljava/lang/Object;
.source "Geometry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/infinity/particle/Geometry$Circle;,
        Lcom/android/systemui/infinity/particle/Geometry$Cylinder;,
        Lcom/android/systemui/infinity/particle/Geometry$Plane;,
        Lcom/android/systemui/infinity/particle/Geometry$Point;,
        Lcom/android/systemui/infinity/particle/Geometry$Ray;,
        Lcom/android/systemui/infinity/particle/Geometry$Sphere;,
        Lcom/android/systemui/infinity/particle/Geometry$Vector;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static distanceBetween(Lcom/android/systemui/infinity/particle/Geometry$Point;Lcom/android/systemui/infinity/particle/Geometry$Ray;)F
    .locals 7

    iget-object v5, p1, Lcom/android/systemui/infinity/particle/Geometry$Ray;->point:Lcom/android/systemui/infinity/particle/Geometry$Point;

    invoke-static {v5, p0}, Lcom/android/systemui/infinity/particle/Geometry;->vectorBetween(Lcom/android/systemui/infinity/particle/Geometry$Point;Lcom/android/systemui/infinity/particle/Geometry$Point;)Lcom/android/systemui/infinity/particle/Geometry$Vector;

    move-result-object v3

    iget-object v5, p1, Lcom/android/systemui/infinity/particle/Geometry$Ray;->point:Lcom/android/systemui/infinity/particle/Geometry$Point;

    iget-object v6, p1, Lcom/android/systemui/infinity/particle/Geometry$Ray;->vector:Lcom/android/systemui/infinity/particle/Geometry$Vector;

    invoke-virtual {v5, v6}, Lcom/android/systemui/infinity/particle/Geometry$Point;->translate(Lcom/android/systemui/infinity/particle/Geometry$Vector;)Lcom/android/systemui/infinity/particle/Geometry$Point;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/android/systemui/infinity/particle/Geometry;->vectorBetween(Lcom/android/systemui/infinity/particle/Geometry$Point;Lcom/android/systemui/infinity/particle/Geometry$Point;)Lcom/android/systemui/infinity/particle/Geometry$Vector;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/infinity/particle/Geometry$Vector;->crossProduct(Lcom/android/systemui/infinity/particle/Geometry$Vector;)Lcom/android/systemui/infinity/particle/Geometry$Vector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/infinity/particle/Geometry$Vector;->length()F

    move-result v0

    iget-object v5, p1, Lcom/android/systemui/infinity/particle/Geometry$Ray;->vector:Lcom/android/systemui/infinity/particle/Geometry$Vector;

    invoke-virtual {v5}, Lcom/android/systemui/infinity/particle/Geometry$Vector;->length()F

    move-result v2

    div-float v1, v0, v2

    return v1
.end method

.method public static intersectionPoint(Lcom/android/systemui/infinity/particle/Geometry$Ray;Lcom/android/systemui/infinity/particle/Geometry$Plane;)Lcom/android/systemui/infinity/particle/Geometry$Point;
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/infinity/particle/Geometry$Ray;->point:Lcom/android/systemui/infinity/particle/Geometry$Point;

    iget-object v4, p1, Lcom/android/systemui/infinity/particle/Geometry$Plane;->point:Lcom/android/systemui/infinity/particle/Geometry$Point;

    invoke-static {v3, v4}, Lcom/android/systemui/infinity/particle/Geometry;->vectorBetween(Lcom/android/systemui/infinity/particle/Geometry$Point;Lcom/android/systemui/infinity/particle/Geometry$Point;)Lcom/android/systemui/infinity/particle/Geometry$Vector;

    move-result-object v1

    iget-object v3, p1, Lcom/android/systemui/infinity/particle/Geometry$Plane;->normal:Lcom/android/systemui/infinity/particle/Geometry$Vector;

    invoke-virtual {v1, v3}, Lcom/android/systemui/infinity/particle/Geometry$Vector;->dotProduct(Lcom/android/systemui/infinity/particle/Geometry$Vector;)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/infinity/particle/Geometry$Ray;->vector:Lcom/android/systemui/infinity/particle/Geometry$Vector;

    iget-object v5, p1, Lcom/android/systemui/infinity/particle/Geometry$Plane;->normal:Lcom/android/systemui/infinity/particle/Geometry$Vector;

    invoke-virtual {v4, v5}, Lcom/android/systemui/infinity/particle/Geometry$Vector;->dotProduct(Lcom/android/systemui/infinity/particle/Geometry$Vector;)F

    move-result v4

    div-float v2, v3, v4

    iget-object v3, p0, Lcom/android/systemui/infinity/particle/Geometry$Ray;->point:Lcom/android/systemui/infinity/particle/Geometry$Point;

    iget-object v4, p0, Lcom/android/systemui/infinity/particle/Geometry$Ray;->vector:Lcom/android/systemui/infinity/particle/Geometry$Vector;

    invoke-virtual {v4, v2}, Lcom/android/systemui/infinity/particle/Geometry$Vector;->scale(F)Lcom/android/systemui/infinity/particle/Geometry$Vector;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/infinity/particle/Geometry$Point;->translate(Lcom/android/systemui/infinity/particle/Geometry$Vector;)Lcom/android/systemui/infinity/particle/Geometry$Point;

    move-result-object v0

    return-object v0
.end method

.method public static intersects(Lcom/android/systemui/infinity/particle/Geometry$Sphere;Lcom/android/systemui/infinity/particle/Geometry$Ray;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/Geometry$Sphere;->center:Lcom/android/systemui/infinity/particle/Geometry$Point;

    invoke-static {v0, p1}, Lcom/android/systemui/infinity/particle/Geometry;->distanceBetween(Lcom/android/systemui/infinity/particle/Geometry$Point;Lcom/android/systemui/infinity/particle/Geometry$Ray;)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/infinity/particle/Geometry$Sphere;->radius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static vectorBetween(Lcom/android/systemui/infinity/particle/Geometry$Point;Lcom/android/systemui/infinity/particle/Geometry$Point;)Lcom/android/systemui/infinity/particle/Geometry$Vector;
    .locals 5

    new-instance v0, Lcom/android/systemui/infinity/particle/Geometry$Vector;

    iget v1, p1, Lcom/android/systemui/infinity/particle/Geometry$Point;->x:F

    iget v2, p0, Lcom/android/systemui/infinity/particle/Geometry$Point;->x:F

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/android/systemui/infinity/particle/Geometry$Point;->y:F

    iget v3, p0, Lcom/android/systemui/infinity/particle/Geometry$Point;->y:F

    sub-float/2addr v2, v3

    iget v3, p1, Lcom/android/systemui/infinity/particle/Geometry$Point;->z:F

    iget v4, p0, Lcom/android/systemui/infinity/particle/Geometry$Point;->z:F

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/infinity/particle/Geometry$Vector;-><init>(FFF)V

    return-object v0
.end method
