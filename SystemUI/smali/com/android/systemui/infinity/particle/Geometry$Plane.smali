.class public Lcom/android/systemui/infinity/particle/Geometry$Plane;
.super Ljava/lang/Object;
.source "Geometry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/particle/Geometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Plane"
.end annotation


# instance fields
.field public final normal:Lcom/android/systemui/infinity/particle/Geometry$Vector;

.field public final point:Lcom/android/systemui/infinity/particle/Geometry$Point;


# direct methods
.method public constructor <init>(Lcom/android/systemui/infinity/particle/Geometry$Point;Lcom/android/systemui/infinity/particle/Geometry$Vector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/infinity/particle/Geometry$Plane;->point:Lcom/android/systemui/infinity/particle/Geometry$Point;

    iput-object p2, p0, Lcom/android/systemui/infinity/particle/Geometry$Plane;->normal:Lcom/android/systemui/infinity/particle/Geometry$Vector;

    return-void
.end method
