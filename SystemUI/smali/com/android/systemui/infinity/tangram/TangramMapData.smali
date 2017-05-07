.class public Lcom/android/systemui/infinity/tangram/TangramMapData;
.super Ljava/lang/Object;
.source "TangramMapData.java"


# instance fields
.field public VERTEX_DATA:[[F

.field public mapHeight:F

.field public mapId:I

.field public mapWidth:F

.field public objectType:I

.field public previewHeight:F

.field public previewWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    return-void
.end method
