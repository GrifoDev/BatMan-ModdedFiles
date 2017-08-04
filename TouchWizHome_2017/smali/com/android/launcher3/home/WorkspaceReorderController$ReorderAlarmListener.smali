.class Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;
.super Ljava/lang/Object;
.source "WorkspaceReorderController.java"

# interfaces
.implements Lcom/android/launcher3/util/alarm/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/WorkspaceReorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReorderAlarmListener"
.end annotation


# instance fields
.field child:Landroid/view/View;

.field d:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

.field dragViewCenter:[F

.field spanInfo:Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

.field targetCell:[I

.field final synthetic this$0:Lcom/android/launcher3/home/WorkspaceReorderController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/WorkspaceReorderController;[F[ILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->dragViewCenter:[F

    iput-object p3, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->targetCell:[I

    iput-object p4, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->spanInfo:Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    iput-object p6, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->child:Landroid/view/View;

    iput-object p5, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->d:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/util/alarm/Alarm;)V
    .locals 15

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$300(Lcom/android/launcher3/home/WorkspaceReorderController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->revertTempState()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v6, v0, [I

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$300(Lcom/android/launcher3/home/WorkspaceReorderController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->dragViewCenter:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->dragViewCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->spanInfo:Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    iget v3, v3, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanX:I

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->spanInfo:Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    iget v4, v4, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanY:I

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->targetCell:[I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->targetCell:[I

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->targetCell:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$602(Lcom/android/launcher3/home/WorkspaceReorderController;I)I

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->targetCell:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$702(Lcom/android/launcher3/home/WorkspaceReorderController;I)I

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->dragViewCenter:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->dragViewCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->spanInfo:Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->child:Landroid/view/View;

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->targetCell:[I

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/home/WorkspaceReorderController;->performReorder(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Landroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->targetCell:[I

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->targetCell:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->targetCell:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-gez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->revertTempState()V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    aget v0, v6, v0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->spanInfo:Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    iget v1, v1, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    aget v0, v6, v0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->spanInfo:Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    iget v1, v1, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    if-eq v0, v1, :cond_5

    :cond_3
    const/4 v14, 0x1

    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$300(Lcom/android/launcher3/home/WorkspaceReorderController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v7

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->d:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v8, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->d:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->getDragOutline()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->targetCell:[I

    const/4 v1, 0x0

    aget v10, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->targetCell:[I

    const/4 v1, 0x1

    aget v11, v0, v1

    const/4 v0, 0x0

    aget v12, v6, v0

    const/4 v0, 0x1

    aget v13, v6, v0

    invoke-virtual/range {v7 .. v14}, Lcom/android/launcher3/common/base/view/CellLayout;->visualizeDropLocation(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;IIIIZ)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$800(Lcom/android/launcher3/home/WorkspaceReorderController;)Lcom/android/launcher3/common/drag/DragState;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;->this$0:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->access$800(Lcom/android/launcher3/home/WorkspaceReorderController;)Lcom/android/launcher3/common/drag/DragState;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/launcher3/common/drag/DragState;->setDragMode(I)V

    goto :goto_1

    :cond_5
    const/4 v14, 0x0

    goto :goto_2
.end method
