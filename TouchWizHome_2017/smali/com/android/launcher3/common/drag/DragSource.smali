.class public interface abstract Lcom/android/launcher3/common/drag/DragSource;
.super Ljava/lang/Object;
.source "DragSource.java"


# static fields
.field public static final DRAG_SOURCE_APPS:I = 0x1

.field public static final DRAG_SOURCE_APPS_FOLDER:I = 0x4

.field public static final DRAG_SOURCE_HOME:I = 0x0

.field public static final DRAG_SOURCE_HOME_FOLDER:I = 0x3

.field public static final DRAG_SOURCE_HOTSEAT:I = 0x2

.field public static final DRAG_SOURCE_QUICK_OPTION_POPUP:I = 0x6

.field public static final DRAG_SOURCE_WIDGET:I = 0x5


# virtual methods
.method public abstract getController()Lcom/android/launcher3/common/stage/Stage;
.end method

.method public abstract getDragSourceType()I
.end method

.method public abstract getIntrinsicIconSize()I
.end method

.method public abstract getOutlineColor()I
.end method

.method public abstract getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
.end method

.method public abstract getQuickOptionFlags(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
.end method

.method public abstract onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
.end method

.method public abstract onExtraObjectDragged(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onExtraObjectDropCompleted(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation
.end method
