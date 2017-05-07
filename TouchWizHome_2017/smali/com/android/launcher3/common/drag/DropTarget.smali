.class public interface abstract Lcom/android/launcher3/common/drag/DropTarget;
.super Ljava/lang/Object;
.source "DropTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DropTarget"


# virtual methods
.method public abstract acceptDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
.end method

.method public abstract getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
.end method

.method public abstract getLeft()I
.end method

.method public abstract getOutlineColor()I
.end method

.method public abstract getTargetView()Landroid/view/View;
.end method

.method public abstract getTop()I
.end method

.method public abstract isDropEnabled(Z)Z
.end method

.method public abstract onDragEnter(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
.end method

.method public abstract onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
.end method

.method public abstract onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
.end method

.method public abstract onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
.end method
