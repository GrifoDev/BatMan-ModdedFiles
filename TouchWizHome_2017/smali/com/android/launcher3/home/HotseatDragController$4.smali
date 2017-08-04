.class Lcom/android/launcher3/home/HotseatDragController$4;
.super Ljava/lang/Object;
.source "HotseatDragController.java"

# interfaces
.implements Lcom/android/launcher3/util/alarm/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HotseatDragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HotseatDragController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HotseatDragController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HotseatDragController$4;->this$0:Lcom/android/launcher3/home/HotseatDragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/util/alarm/Alarm;)V
    .locals 3

    invoke-static {}, Lcom/android/launcher3/home/HotseatDragController;->access$200()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/home/HotseatDragController;->access$200()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController$4;->this$0:Lcom/android/launcher3/home/HotseatDragController;

    invoke-static {v0}, Lcom/android/launcher3/home/HotseatDragController;->access$500(Lcom/android/launcher3/home/HotseatDragController;)Lcom/android/launcher3/home/HotseatCellLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController$4;->this$0:Lcom/android/launcher3/home/HotseatDragController;

    invoke-static {v1}, Lcom/android/launcher3/home/HotseatDragController;->access$300(Lcom/android/launcher3/home/HotseatDragController;)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController$4;->this$0:Lcom/android/launcher3/home/HotseatDragController;

    invoke-static {v2}, Lcom/android/launcher3/home/HotseatDragController;->access$400(Lcom/android/launcher3/home/HotseatDragController;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HotseatCellLayout;->realTimeReorder(II)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/home/HotseatDragController;->access$202(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    invoke-static {}, Lcom/android/launcher3/home/HotseatDragController;->access$200()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/home/HotseatDragController;->access$200()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController$4;->this$0:Lcom/android/launcher3/home/HotseatDragController;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController$4;->this$0:Lcom/android/launcher3/home/HotseatDragController;

    invoke-static {v1}, Lcom/android/launcher3/home/HotseatDragController;->access$400(Lcom/android/launcher3/home/HotseatDragController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HotseatDragController;->access$302(Lcom/android/launcher3/home/HotseatDragController;I)I

    goto :goto_0
.end method
