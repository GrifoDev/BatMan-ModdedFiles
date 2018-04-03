.class public Lcom/android/systemui/infinity/particle/Geometry$Circle;
.super Ljava/lang/Object;
.source "Geometry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/particle/Geometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Circle"
.end annotation


# instance fields
.field public final center:Lcom/android/systemui/infinity/particle/Geometry$Point;

.field public final radius:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/infinity/particle/Geometry$Point;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/infinity/particle/Geometry$Circle;->center:Lcom/android/systemui/infinity/particle/Geometry$Point;

    iput p2, p0, Lcom/android/systemui/infinity/particle/Geometry$Circle;->radius:F

    return-void
.end method


# virtual methods
.method public scale(F)Lcom/android/systemui/infinity/particle/Geometry$Circle;
    .locals 3

    new-instance v0, Lcom/android/systemui/infinity/particle/Geometry$Circle;

    iget-object v1, p0, Lcom/android/systemui/infinity/particle/Geometry$Circle;->center:Lcom/android/systemui/infinity/particle/Geometry$Point;

    iget v2, p0, Lcom/android/systemui/infinity/particle/Geometry$Circle;->radius:F

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/infinity/particle/Geometry$Circle;-><init>(Lcom/android/systemui/infinity/particle/Geometry$Point;F)V

    return-object v0
.end method
