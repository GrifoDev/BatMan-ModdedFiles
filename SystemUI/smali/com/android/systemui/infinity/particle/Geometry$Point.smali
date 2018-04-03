.class public Lcom/android/systemui/infinity/particle/Geometry$Point;
.super Ljava/lang/Object;
.source "Geometry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/particle/Geometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# instance fields
.field public alpha:F

.field public hideOnHome:F

.field public plusAlpha:F

.field public radius:F

.field public final x:F

.field public final y:F

.field public final z:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/infinity/particle/Geometry$Point;->x:F

    iput p2, p0, Lcom/android/systemui/infinity/particle/Geometry$Point;->y:F

    iput p3, p0, Lcom/android/systemui/infinity/particle/Geometry$Point;->z:F

    return-void
.end method


# virtual methods
.method public translate(Lcom/android/systemui/infinity/particle/Geometry$Vector;)Lcom/android/systemui/infinity/particle/Geometry$Point;
    .locals 5

    new-instance v0, Lcom/android/systemui/infinity/particle/Geometry$Point;

    iget v1, p0, Lcom/android/systemui/infinity/particle/Geometry$Point;->x:F

    iget v2, p1, Lcom/android/systemui/infinity/particle/Geometry$Vector;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/infinity/particle/Geometry$Point;->y:F

    iget v3, p1, Lcom/android/systemui/infinity/particle/Geometry$Vector;->y:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/infinity/particle/Geometry$Point;->z:F

    iget v4, p1, Lcom/android/systemui/infinity/particle/Geometry$Vector;->z:F

    add-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/infinity/particle/Geometry$Point;-><init>(FFF)V

    return-object v0
.end method

.method public translateY(F)Lcom/android/systemui/infinity/particle/Geometry$Point;
    .locals 4

    new-instance v0, Lcom/android/systemui/infinity/particle/Geometry$Point;

    iget v1, p0, Lcom/android/systemui/infinity/particle/Geometry$Point;->x:F

    iget v2, p0, Lcom/android/systemui/infinity/particle/Geometry$Point;->y:F

    add-float/2addr v2, p1

    iget v3, p0, Lcom/android/systemui/infinity/particle/Geometry$Point;->z:F

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/infinity/particle/Geometry$Point;-><init>(FFF)V

    return-object v0
.end method
