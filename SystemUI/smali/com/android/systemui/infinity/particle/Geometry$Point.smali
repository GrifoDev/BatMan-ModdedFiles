.class public Lcom/android/systemui/infinity/particle/Geometry$Point;
.super Ljava/lang/Object;
.source "Geometry.java"


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
