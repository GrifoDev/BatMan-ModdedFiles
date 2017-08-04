.class Lcom/android/launcher3/common/view/DragLayer$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/view/DragLayer;->animateExtraDragView(Lcom/android/launcher3/common/drag/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/view/DragLayer;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;

.field final synthetic val$view:Lcom/android/launcher3/common/drag/DragView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/view/DragLayer;Ljava/lang/Runnable;Lcom/android/launcher3/common/drag/DragView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/view/DragLayer$5;->this$0:Lcom/android/launcher3/common/view/DragLayer;

    iput-object p2, p0, Lcom/android/launcher3/common/view/DragLayer$5;->val$onCompleteRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/launcher3/common/view/DragLayer$5;->val$view:Lcom/android/launcher3/common/drag/DragView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer$5;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer$5;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer$5;->val$view:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer$5;->this$0:Lcom/android/launcher3/common/view/DragLayer;

    invoke-static {v0}, Lcom/android/launcher3/common/view/DragLayer;->access$500(Lcom/android/launcher3/common/view/DragLayer;)Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer$5;->val$view:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->onDeferredEndDrag(Lcom/android/launcher3/common/drag/DragView;)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer$5;->this$0:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/DragLayer;->invalidate()V

    return-void
.end method
