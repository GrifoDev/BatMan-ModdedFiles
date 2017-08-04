.class Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar$1;
.super Ljava/lang/Object;
.source "BaseRecyclerViewFastScrollBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->animateScrollbar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar$1;->this$0:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar$1;->this$0:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-static {v0}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->access$000(Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar$1;->this$0:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-static {v0}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->access$400(Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;)Lcom/android/launcher3/common/base/view/BaseRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar$1;->this$0:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-static {v1}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->access$100(Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar$1;->this$0:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-static {v2}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->access$100(Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar$1;->this$0:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-static {v3}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->access$100(Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar$1;->this$0:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-static {v4}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->access$200(Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar$1;->this$0:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-static {v4}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->access$100(Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar$1;->this$0:Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;

    invoke-static {v5}, Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;->access$300(Lcom/android/launcher3/common/base/BaseRecyclerViewFastScrollBar;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/common/base/view/BaseRecyclerView;->invalidate(IIII)V

    return-void
.end method
