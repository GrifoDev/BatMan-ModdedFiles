.class public Lcom/android/systemui/infinity/tangram/TangramData;
.super Ljava/lang/Object;
.source "TangramData.java"


# instance fields
.field public currentAlpha:F

.field public currentPosition:F

.field public easing:F

.field public index:I

.field public maskId:I

.field public maxX:F

.field public minX:F

.field public pivotX:F

.field public plusHideMoveX:F

.field public plusHideMoveY:F

.field public plusMoveX:F

.field public plusMoveY:F

.field public rotateY:F

.field public showingProgress:F

.field public targetAlpha:F

.field public textureId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramData;->easing:F

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramData;->currentAlpha:F

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramData;->targetAlpha:F

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramData;->plusHideMoveX:F

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramData;->plusHideMoveY:F

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramData;->showingProgress:F

    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramData;->index:I

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramData;->currentAlpha:F

    return-void
.end method
