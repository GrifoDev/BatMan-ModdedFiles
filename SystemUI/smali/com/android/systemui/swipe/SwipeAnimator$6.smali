.class Lcom/android/systemui/swipe/SwipeAnimator$6;
.super Ljava/lang/Object;
.source "SwipeAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/swipe/SwipeAnimator;->startPreviewFocusAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/swipe/SwipeAnimator;

.field final synthetic val$leftShortcut:Landroid/widget/ImageView;

.field final synthetic val$rightShortcut:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/swipe/SwipeAnimator;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$6;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    iput-object p2, p0, Lcom/android/systemui/swipe/SwipeAnimator$6;->val$leftShortcut:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/systemui/swipe/SwipeAnimator$6;->val$rightShortcut:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$6;->val$leftShortcut:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$6;->val$leftShortcut:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$6;->val$rightShortcut:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$6;->val$rightShortcut:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_1
    return-void
.end method
