.class Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;
.super Ljava/lang/Object;
.source "VIPrimitiveMorpher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VIBlendShapeInfo"
.end annotation


# instance fields
.field mPivotTimeCursor:F

.field mShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

.field final synthetic this$0:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;


# direct methods
.method public constructor <init>(Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;Lvi/sec/com/bixbyvilibrary/VIPrimitive;F)V
    .locals 0

    iput-object p1, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;->this$0:Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;->mShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    iput p3, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;->mPivotTimeCursor:F

    return-void
.end method


# virtual methods
.method getPivotTimeCursor()F
    .locals 1

    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;->mPivotTimeCursor:F

    return v0
.end method

.method getPrimitive()Lvi/sec/com/bixbyvilibrary/VIPrimitive;
    .locals 1

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;->mShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    return-object v0
.end method
