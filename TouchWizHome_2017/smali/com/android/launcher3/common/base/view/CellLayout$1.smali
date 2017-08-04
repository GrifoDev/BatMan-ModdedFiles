.class Lcom/android/launcher3/common/base/view/CellLayout$1;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/base/view/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/base/view/CellLayout;

.field final synthetic val$anim:Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

.field final synthetic val$thisIndex:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/base/view/CellLayout$1;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object p2, p0, Lcom/android/launcher3/common/base/view/CellLayout$1;->val$anim:Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    iput p3, p0, Lcom/android/launcher3/common/base/view/CellLayout$1;->val$thisIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/CellLayout$1;->val$anim:Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;

    invoke-virtual {v2}, Lcom/android/launcher3/util/animation/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/CellLayout$1;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-static {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->access$000(Lcom/android/launcher3/common/base/view/CellLayout;)[F

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/common/base/view/CellLayout$1;->val$thisIndex:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v3, v4

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/CellLayout$1;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/CellLayout$1;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-static {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->access$100(Lcom/android/launcher3/common/base/view/CellLayout;)[Landroid/graphics/Rect;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/common/base/view/CellLayout$1;->val$thisIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method
