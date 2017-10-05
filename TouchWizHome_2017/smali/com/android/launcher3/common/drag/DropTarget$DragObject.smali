.class public Lcom/android/launcher3/common/drag/DropTarget$DragObject;
.super Ljava/lang/Object;
.source "DropTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/drag/DropTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragObject"
.end annotation


# instance fields
.field public cancelDropFolder:Z

.field public cancelled:Z

.field public deferDragViewCleanupPostAnimation:Z

.field public dragComplete:Z

.field public dragInfo:Ljava/lang/Object;

.field public dragSource:Lcom/android/launcher3/common/drag/DragSource;

.field public dragView:Lcom/android/launcher3/common/drag/DragView;

.field public extraDragInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;"
        }
    .end annotation
.end field

.field public extraDragSourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DragSource;",
            ">;"
        }
    .end annotation
.end field

.field public postAnimationRunnable:Ljava/lang/Runnable;

.field public restored:Z

.field public x:I

.field public xOffset:I

.field public y:I

.field public yOffset:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->x:I

    iput v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->y:I

    iput v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->xOffset:I

    iput v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->yOffset:I

    iput-boolean v2, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    iput-object v1, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iput-object v1, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    iput-object v1, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    iput-boolean v2, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    iput-boolean v2, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->restored:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    iput-object v1, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->x:I

    iput v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->y:I

    iput v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->xOffset:I

    iput v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->yOffset:I

    iput-boolean v2, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    iput-object v1, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iput-object v1, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    iput-object v1, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    iput-boolean v2, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    iput-boolean v2, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->restored:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    iput-object v1, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->copyFrom(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 1

    iget v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->x:I

    iput v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->x:I

    iget v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->y:I

    iput v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->y:I

    iget v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->xOffset:I

    iput v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->xOffset:I

    iget v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->yOffset:I

    iput v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->yOffset:I

    iget-boolean v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    iput-boolean v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    iget-boolean v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    iput-boolean v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    iget-boolean v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    iput-boolean v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    iget-boolean v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->restored:Z

    iput-boolean v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->restored:Z

    iget-boolean v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    iput-boolean v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    return-void
.end method

.method public final getVisualCenter([F)[F
    .locals 5

    if-nez p1, :cond_0

    const/4 v3, 0x2

    new-array v1, v3, [F

    :goto_0
    iget v3, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->x:I

    iget v4, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->xOffset:I

    sub-int v0, v3, v4

    iget v3, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->y:I

    iget v4, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->yOffset:I

    sub-int v2, v3, v4

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    aput v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    int-to-float v4, v4

    aput v4, v1, v3

    return-object v1

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method
