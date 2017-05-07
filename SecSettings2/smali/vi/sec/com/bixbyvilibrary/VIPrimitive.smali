.class public Lvi/sec/com/bixbyvilibrary/VIPrimitive;
.super Ljava/lang/Object;
.source "VIPrimitive.java"


# instance fields
.field protected mBound:Landroid/graphics/RectF;

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const v2, 0x47c34f80    # 99999.0f

    const v1, -0x383cb080    # -99999.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->mList:Ljava/util/List;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->mBound:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method addDrawingCommand(Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;)V
    .locals 3

    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getBound()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->mBound:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iput v2, v1, Landroid/graphics/RectF;->left:F

    :cond_0
    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->mBound:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iput v2, v1, Landroid/graphics/RectF;->top:F

    :cond_1
    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->mBound:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iput v2, v1, Landroid/graphics/RectF;->right:F

    :cond_2
    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    iget-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->mBound:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    :cond_3
    return-void
.end method

.method public countOfCommand()I
    .locals 1

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBound()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->mBound:Landroid/graphics/RectF;

    return-object v0
.end method

.method getCommand(I)Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;
    .locals 1

    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;

    return-object v0
.end method
