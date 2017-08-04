.class Lcom/android/launcher3/home/HotseatDragController$5;
.super Ljava/lang/Object;
.source "HotseatDragController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HotseatDragController;->restoreHotseatObjects(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HotseatDragController;

.field final synthetic val$dragView:Lcom/android/launcher3/common/drag/DragView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HotseatDragController;Lcom/android/launcher3/common/drag/DragView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HotseatDragController$5;->this$0:Lcom/android/launcher3/home/HotseatDragController;

    iput-object p2, p0, Lcom/android/launcher3/home/HotseatDragController$5;->val$dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController$5;->this$0:Lcom/android/launcher3/home/HotseatDragController;

    invoke-static {v0}, Lcom/android/launcher3/home/HotseatDragController;->access$600(Lcom/android/launcher3/home/HotseatDragController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController$5;->val$dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->onDeferredEndDrag(Lcom/android/launcher3/common/drag/DragView;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
