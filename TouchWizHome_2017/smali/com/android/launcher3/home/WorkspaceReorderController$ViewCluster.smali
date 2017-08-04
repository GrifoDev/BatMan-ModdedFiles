.class Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;
.super Ljava/lang/Object;
.source "WorkspaceReorderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/WorkspaceReorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewCluster"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster$PositionComparator;
    }
.end annotation


# static fields
.field static final BOTTOM:I = 0x3

.field static final LEFT:I = 0x0

.field static final RIGHT:I = 0x2

.field static final TOP:I = 0x1


# instance fields
.field bottomEdge:[I

.field bottomEdgeDirty:Z

.field boundingRect:Landroid/graphics/Rect;

.field boundingRectDirty:Z

.field comparator:Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster$PositionComparator;

.field config:Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

.field leftEdge:[I

.field leftEdgeDirty:Z

.field rightEdge:[I

.field rightEdgeDirty:Z

.field final synthetic this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

.field topEdge:[I

.field topEdgeDirty:Z

.field views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/WorkspaceReorderController;Ljava/util/ArrayList;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$000(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->leftEdge:[I

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$000(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->rightEdge:[I

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$100(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->topEdge:[I

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$100(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->bottomEdge:[I

    new-instance v0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster$PositionComparator;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster$PositionComparator;-><init>(Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->comparator:Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster$PositionComparator;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->views:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->config:Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->resetEdges()V

    return-void
.end method


# virtual methods
.method addView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->resetEdges()V

    return-void
.end method

.method computeEdge(I[I)V
    .locals 10

    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_7

    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->config:Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    iget-object v8, v8, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    packed-switch p1, :pswitch_data_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_0
    iget v5, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v4, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    :goto_1
    iget v8, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v9, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v8}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$000(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v8

    if-ge v4, v8, :cond_0

    aget v8, p2, v4

    if-lt v5, v8, :cond_1

    aget v8, p2, v4

    if-gez v8, :cond_2

    :cond_1
    aput v5, p2, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :pswitch_1
    iget v8, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v9, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    add-int v6, v8, v9

    iget v4, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    :goto_2
    iget v8, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v9, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v8}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$000(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v8

    if-ge v4, v8, :cond_0

    aget v8, p2, v4

    if-le v6, v8, :cond_3

    aput v6, p2, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :pswitch_2
    iget v7, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v4, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    :goto_3
    iget v8, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v9, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v8}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$100(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v8

    if-ge v4, v8, :cond_0

    aget v8, p2, v4

    if-lt v7, v8, :cond_4

    aget v8, p2, v4

    if-gez v8, :cond_5

    :cond_4
    aput v7, p2, v4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :pswitch_3
    iget v8, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v9, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    add-int v0, v8, v9

    iget v4, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    :goto_4
    iget v8, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v9, v2, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v8}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$100(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v8

    if-ge v4, v8, :cond_0

    aget v8, p2, v4

    if-le v0, v8, :cond_6

    aput v0, p2, v4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method getBottomEdge()[I
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->bottomEdgeDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->bottomEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->computeEdge(I[I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->bottomEdge:[I

    return-object v0
.end method

.method getBoundingRect()Landroid/graphics/Rect;
    .locals 10

    iget-boolean v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->boundingRectDirty:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->config:Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    iget-object v4, v4, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v7, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    add-int/2addr v7, v8

    iget v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v9, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v7, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    add-int/2addr v7, v8

    iget v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v9, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    return-object v3
.end method

.method getEdge(I)[I
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->getBottomEdge()[I

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->getLeftEdge()[I

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->getRightEdge()[I

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->getTopEdge()[I

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method getLeftEdge()[I
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->leftEdgeDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->leftEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->computeEdge(I[I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->leftEdge:[I

    return-object v0
.end method

.method getRightEdge()[I
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->rightEdgeDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->rightEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->computeEdge(I[I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->rightEdge:[I

    return-object v0
.end method

.method getTopEdge()[I
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->topEdgeDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->topEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->computeEdge(I[I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->topEdge:[I

    return-object v0
.end method

.method isViewTouchingEdge(Landroid/view/View;I)Z
    .locals 7

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->config:Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    iget-object v4, v4, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->getEdge(I)[I

    move-result-object v1

    packed-switch p2, :pswitch_data_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    return v3

    :pswitch_0
    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    :goto_0
    iget v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$000(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v4

    if-ge v2, v4, :cond_0

    aget v4, v1, v2

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_1
    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    :goto_1
    iget v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$000(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v4

    if-ge v2, v4, :cond_0

    aget v4, v1, v2

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    if-eq v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_2
    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    :goto_2
    iget v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$100(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v4

    if-ge v2, v4, :cond_0

    aget v4, v1, v2

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_3
    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    :goto_3
    iget v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$100(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v4

    if-ge v2, v4, :cond_0

    aget v4, v1, v2

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    if-eq v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method resetEdges()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$100(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->topEdge:[I

    aput v3, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->bottomEdge:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$000(Lcom/android/launcher3/home/WorkspaceReorderController;)I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->leftEdge:[I

    aput v3, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->rightEdge:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->leftEdgeDirty:Z

    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->rightEdgeDirty:Z

    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->bottomEdgeDirty:Z

    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->topEdgeDirty:Z

    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->boundingRectDirty:Z

    return-void
.end method

.method shift(II)V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->config:Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    iget-object v3, v3, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    packed-switch p1, :pswitch_data_0

    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    add-int/2addr v3, p2

    iput v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    goto :goto_0

    :pswitch_0
    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    sub-int/2addr v3, p2

    iput v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    goto :goto_0

    :pswitch_1
    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    add-int/2addr v3, p2

    iput v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    goto :goto_0

    :pswitch_2
    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    sub-int/2addr v3, p2

    iput v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->resetEdges()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method sortConfigurationForEdgePush(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->comparator:Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster$PositionComparator;

    iput p1, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster$PositionComparator;->whichEdge:I

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->config:Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->comparator:Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster$PositionComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
