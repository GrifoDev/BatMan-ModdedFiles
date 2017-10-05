.class Lcom/android/launcher3/util/animation/RevealOutlineAnimation$2;
.super Ljava/lang/Object;
.source "RevealOutlineAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/animation/RevealOutlineAnimation;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/animation/RevealOutlineAnimation;

.field final synthetic val$revealView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/animation/RevealOutlineAnimation;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$2;->this$0:Lcom/android/launcher3/util/animation/RevealOutlineAnimation;

    iput-object p2, p0, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$2;->val$revealView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$2;->this$0:Lcom/android/launcher3/util/animation/RevealOutlineAnimation;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/animation/RevealOutlineAnimation;->setProgress(F)V

    iget-object v1, p0, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$2;->val$revealView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidateOutline()V

    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/util/animation/RevealOutlineAnimation$2;->val$revealView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
