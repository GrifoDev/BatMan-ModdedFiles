.class public Lcom/android/systemui/infinity/particle/Geometry$Ray;
.super Ljava/lang/Object;
.source "Geometry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/particle/Geometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ray"
.end annotation


# instance fields
.field public final point:Lcom/android/systemui/infinity/particle/Geometry$Point;

.field public final vector:Lcom/android/systemui/infinity/particle/Geometry$Vector;


# direct methods
.method public constructor <init>(Lcom/android/systemui/infinity/particle/Geometry$Point;Lcom/android/systemui/infinity/particle/Geometry$Vector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/infinity/particle/Geometry$Ray;->point:Lcom/android/systemui/infinity/particle/Geometry$Point;

    iput-object p2, p0, Lcom/android/systemui/infinity/particle/Geometry$Ray;->vector:Lcom/android/systemui/infinity/particle/Geometry$Vector;

    return-void
.end method
