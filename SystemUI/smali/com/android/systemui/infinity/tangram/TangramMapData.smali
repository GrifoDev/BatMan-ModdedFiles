.class public Lcom/android/systemui/infinity/tangram/TangramMapData;
.super Ljava/lang/Object;
.source "TangramMapData.java"


# static fields
.field public static final TYPE_BLACK:I = 0x0

.field public static final TYPE_BLUE:I = 0x2

.field public static final TYPE_GOLD:I = 0x1

.field public static final TYPE_ORCHID:I = 0x3

.field public static final TYPE_PINK:I = 0x4

.field public static final TYPE_SILVER:I = 0x5


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
