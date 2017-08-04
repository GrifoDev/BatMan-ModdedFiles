.class Lcom/android/launcher3/common/drag/DragView$2;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/drag/DragView;->crossFade(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/drag/DragView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/drag/DragView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragView$2;->this$0:Lcom/android/launcher3/common/drag/DragView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView$2;->this$0:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/common/drag/DragView;->access$902(Lcom/android/launcher3/common/drag/DragView;F)F

    return-void
.end method
