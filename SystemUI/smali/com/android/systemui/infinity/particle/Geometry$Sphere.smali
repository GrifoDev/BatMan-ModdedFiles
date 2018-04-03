.class public Lcom/android/systemui/infinity/particle/Geometry$Sphere;
.super Ljava/lang/Object;
.source "Geometry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/particle/Geometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sphere"
.end annotation


# instance fields
.field public final center:Lcom/android/systemui/infinity/particle/Geometry$Point;

.field public final radius:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/infinity/particle/Geometry$Point;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/infinity/particle/Geometry$Sphere;->center:Lcom/android/systemui/infinity/particle/Geometry$Point;

    iput p2, p0, Lcom/android/systemui/infinity/particle/Geometry$Sphere;->radius:F

    return-void
.end method
