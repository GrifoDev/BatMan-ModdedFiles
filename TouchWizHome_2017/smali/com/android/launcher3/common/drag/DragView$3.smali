.class Lcom/android/launcher3/common/drag/DragView$3;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/drag/DragView;->animateFilterTo([F)V
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

    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragView$3;->this$0:Lcom/android/launcher3/common/drag/DragView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView$3;->this$0:Lcom/android/launcher3/common/drag/DragView;

    invoke-static {v0}, Lcom/android/launcher3/common/drag/DragView;->access$1100(Lcom/android/launcher3/common/drag/DragView;)Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragView$3;->this$0:Lcom/android/launcher3/common/drag/DragView;

    invoke-static {v2}, Lcom/android/launcher3/common/drag/DragView;->access$1000(Lcom/android/launcher3/common/drag/DragView;)[F

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragView$3;->this$0:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->invalidate()V

    return-void
.end method
